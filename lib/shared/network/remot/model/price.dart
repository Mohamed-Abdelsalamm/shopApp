import 'package:shop/shared/network/remot/model/products.dart';

import 'current.dart';

class Price {
  Current? current;

  Price.fromMap(Map<String , dynamic> map){
    this.current = Current.fromMap(map['current']);
  }

  Map toMap(){
    Map<String,dynamic> map={
      'current' : this.current!.toMap(),
    };
    return map;
  }


}