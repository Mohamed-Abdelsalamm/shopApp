import 'package:http/http.dart';

class GetDetails{

  static Future <Response> getDetails(int? id) async {
    return await get(
        Uri.https('asos2.p.rapidapi.com' , '/products/v3/detail', {
         "id" : '$id',
         "lang" : 'en-US',
         "store" : 'US',
         "sizeSchema" : 'US',
         "currency" : 'USD',
        }),
        headers: {
          'X-RapidAPI-Key': 'a2d9c21a2amsh3e9c89cdc559af3p17cd0fjsna7a5eaf0a56b',
          'X-RapidAPI-Host': 'asos2.p.rapidapi.com'
        });
  }
}


