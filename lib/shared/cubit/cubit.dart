import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:shop/modules/account_screen.dart';
import 'package:shop/modules/cart_screen.dart';
import 'package:shop/modules/favourite_screen.dart';
import 'package:shop/modules/home_screen.dart';
import 'package:shop/shared/cubit/states.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:shop/shared/network/remot/model/apii.dart';
import 'package:shop/shared/network/remot/model/details.dart';
import 'package:shop/shared/network/remot/model/products.dart';
import 'package:shop/shared/network/remot/model_for_details/api_details.dart';
import 'package:shop/shared/network/remot/model_for_details/details.dart';
import 'package:sqflite/sqflite.dart';

import '../../modules/products/products_details_screen.dart';
import '../network/local/database.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int? indexForDetails;
  int currentIndex = 2;
  bool? isExist=false;

  Database? db;
  final String columnId = 'id';
  final String columnProductTitle = 'productTitle';
  final String columnImageUrl = 'imageUrl';
  final String columnPrice = 'price';
  final String columnIsFav = 'isFav';
  final String productTable = 'product_table';
  List<Product> products = [];

  List<Widget> screens = [
    AccountScreen(),
    FavouriteScreen(),
    HomeScreen(),
    CartScreen(),
  ];
  List<String> appBarTitle = [
    'My Account',
    'My Favourite',
    '',
    'My Cart',
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavigationBarState());
  }

  Map<String, dynamic> allPro2 = {};
  List<dynamic> productDetails = [];

  TheMain? products1;

  Details? details;

  Future getDataFromApi() async {
    try {
      await GetApi.getData().then((value) {
        if (value.statusCode >= 200 && value.statusCode <= 300) {
          final Map<String, dynamic> body = jsonDecode(value.body);
          products1 = TheMain.fromMap(body);
          print(products1);
          allPro2.clear();
          productDetails.clear();
          allPro2.addAll(body);
          productDetails = body["products"];
          print('$products1');
        } else {
          throw ('erorr' + value.body);
        }
      });
      emit(AppGetDataFromApi(products1!));
    } catch (e) {
      print(e.toString());
      emit(AppProductError());
    }
  }

  Future getDetailsFromApi(int? id) async {
    try {
      await GetDetails.getDetails(id).then((value) {
        if (value.statusCode >= 200 && value.statusCode <= 300) {
          final Map<String, dynamic> body = jsonDecode(value.body);
          details = Details.fromMap(body);
          print(details);
        } else {
          throw ('erorr' + value.body);
        }
      });
      emit(AppGetDetailsFromApi(details!));
    } catch (e) {
      print(e.toString());
      emit(AppProductDetailsError());
    }
  }

  Future goToDetailsPage(int index) async {
    indexForDetails = index;
    emit(AppProductDetails());
  }

  /* Data base */

  Future openData() async {
    db = await openDatabase(join(await getDatabasesPath(), 'shop.db'),
        version: 1, onCreate: (Database db, int version) async {
      await db.execute('''
create table $productTable ( 
  $columnId integer primary key autoincrement, 
  $columnProductTitle integer not null,
  $columnImageUrl integer not null,
  $columnPrice integer not null,
  $columnIsFav integer not null
  )
''');
    });
    getDataFromDatabase(db);
    print('Database Created');
    emit(AppCreateDatabaseState());
  }

  Future<Product> insert(Product product) async {
    product.id = await db?.insert(productTable, product.toMap());
    print('Item added');
    getDataFromDatabase(db);
    emit(AppInsertDatabaseState());
    return product;
  }

  Future<bool> isItemExists(int? id) async {
    var res = await db?.query(productTable, where: '$columnId = ?', whereArgs: [id]);
    emit(AppIsItemExistsState());
    return res!.isNotEmpty;
  }

  // Future<bool> _isItemExists(String? itemName) async {
  //   var res = await db.rawQuery("SELECT COUNT(*) FROM items WHERE itemName = ?", [itemName]) ;
  //   return res[0]['COUNT(*)'] > 0 ;
  // }


  Future<int> deleteCart(int? id) async {
    return await db!.delete(productTable,
        where: '$columnId = ?', whereArgs: [id]).then((value) async {
      emit(AppDeleteDatabaseState());
      getProduct();
      return id!;
    });
  }


  Future<int> update(Product product) async {
    emit(AppUpdateDatabaseState());
    return await db!.update(productTable, product.toMap(),
        where: '$columnId = ?', whereArgs: [product.id]);
  }

  void getDataFromDatabase(db) {
    products = [];
    db.rawQuery('SELECT * FROM $productTable').then((value) {
      value.forEach((element) {
        products.add(Product.fromMap(element));
      });
    });
    emit(AppGetDatabaseState());
  }

  void getProduct() async {
    List<Map<String, dynamic>> productMaps = await db!.query(productTable);
    if (productMaps.isEmpty) {
      products.clear();
      getDataFromDatabase(db);
    } else {
      products = [];
      for (var element in productMaps) {
        products.add(Product.fromMap(element));
      }
      emit(AppGetDatabaseState());
    }
  }
}
