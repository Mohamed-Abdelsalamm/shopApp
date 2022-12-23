import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/modules/account_screen.dart';
import 'package:shop/modules/cart_screen.dart';
import 'package:shop/modules/favourite_screen.dart';
import 'package:shop/modules/home_screen.dart';
import 'package:shop/shared/cubit/states.dart';

class AppCubit extends Cubit<AppStates>{

  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 2;
  List<Widget> screens = [ AccountScreen(), FavouriteScreen(), HomeScreen(), CartScreen(),];
  List<String> appBarTitle = [ 'My Account', 'My Favourite', '', 'My Cart',];




  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavigationBarState());
  }





}