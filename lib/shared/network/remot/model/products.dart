import 'details.dart';

class TheMain {
  String? categoryName;
  List<Products>? products;


  TheMain.fromMap(Map<String, dynamic> map) {
    this.categoryName = map['categoryName'];
    this.products = [];
    (map['products'] as List).forEach((element) {
      this.products?.add(Products.fromMap(element));
    });
  }
}


