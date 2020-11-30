import 'dart:convert';
import 'package:webapi/models/beer.model.dart';
import 'package:http/http.dart' as http;

class BeerRepository{
  var url = 'https://api.punkapi.com/v2/beers';

  Future<List<Beer>> getBeer() async{
    final response = await http.get(url);
    print(response.body);
    if(response.statusCode == 200){
      List jsonResponse = json.decode(response.body);
      print(jsonResponse);
      return jsonResponse.map((beer) => new Beer.fromJson(beer)).toList();
    } else{
      throw Exception("Erro de conexão.");
    }
  }
}

