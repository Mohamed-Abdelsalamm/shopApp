import 'package:http/http.dart';

class GetApi {

  static Future <Response> getData() async {
    return await get(
         Uri.https('asos2.p.rapidapi.com', '/products/v2/list', {
          "store": 'US',
          "offset": '0',
          "categoryId": '4209',
          "limit": '48',
          "country": 'US',
          "sort": 'freshness',
          "currency": 'USD',
          "sizeSchema": 'US',
          "lang": 'en-US',
        }),
        headers: {
          'X-RapidAPI-Key': 'a2d9c21a2amsh3e9c89cdc559af3p17cd0fjsna7a5eaf0a56b',
          'X-RapidAPI-Host': 'asos2.p.rapidapi.com'
        });
  }
}


