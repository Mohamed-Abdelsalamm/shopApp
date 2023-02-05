class Details {

  int? id;
  String? name;
  String? description;

  Details.fromMap(Map<String , dynamic>map){
    id = map['id'];
    name = map['name'];
    description = map['description'];
  }



}