import 'package:shop/shared/network/remot/model/price.dart';

class Products {
  int? id;
  String? name;
  String? brandName;
  Price? price;
  String? imageUrl;


  Products.fromMap(Map<String , dynamic> map){
    this.id = map['id'];
    this.name = map['name'];
    this.brandName = map['brandName'];
    this.price = Price.fromMap(map['price']);
    this.imageUrl = map['imageUrl'];
  }
}

/*
class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final String currency;
  final String size;
  final String color;
  final int quantity;

  Product({
   required this.id,
   required this.name,
   required this.imageUrl,
   required this.price,
   required this.currency,
   required this.size,
   required this.color,
   required this.quantity
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        imageUrl: json['imageUrl'],
        price: json['price'],
        currency: json['currency'],
        size: json['size'],
        color: json['color'],
        quantity: json['quantity']
    );
  }
}
*/
