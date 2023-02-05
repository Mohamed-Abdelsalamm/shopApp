import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shop/layout/home_layout.dart';
import 'package:shop/shared/bloc_observer.dart';
import 'package:shop/shared/network/remot/model/apii.dart';
import 'modules/products/products_details_screen.dart';

void main() {

  Bloc.observer = MyBlocObserver();
  // GetApi.getData();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        iconTheme: IconThemeData(color: Colors.purple,),
      ),
        home: HomeLayout(),
    );
  }
}
