import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/shared/cubit/cubit.dart';


class Product {
  int? id;
  String? productTitle;
  String? imageUrl;
  int? price;
  bool isFav = false;

  Product({
    this.id,
    required this.productTitle,
    required this.imageUrl,
    required this.price,
    required this.isFav,
  });

  Product.fromMap(Map<String , dynamic> map){
    if(map['id']!= null) id = map['id'];
    productTitle = map['productTitle'];
    imageUrl = map['imageUrl'];
    price = map['price'];
    isFav = map['isFav'] == 0 ? false : true;
  }

  Map<String,dynamic> toMap(){
    Map <String , dynamic> map = {};
    if(id != null)  map['id'] = id;
    map['productTitle']= productTitle;
    map['imageUrl']= imageUrl;
    map['price']= price;
    map['isFav'] = isFav ? 1 : 0;
    return map;
  }



}

