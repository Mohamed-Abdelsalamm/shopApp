class Current {
  late double? value;
 late String? text;

  Current.fromMap(Map<String , dynamic> map){
    this.value = map['value'];
    this.text = map['text'];
  }

  Map toMap(){
    Map<String,dynamic> map={
      'value' : this.value,
      'text' : this.text,
    };
    return map;
  }
}