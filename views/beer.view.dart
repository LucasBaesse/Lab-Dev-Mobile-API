import 'package:flutter/material.dart';
import 'package:webapi/models/beer.model.dart';
import 'package:webapi/repositories/beer.repository.dart';

class HomeApp extends StatefulWidget{
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp>{
  List<Beer> _beers = List<Beer>();
  var _repository = BeerRepository();

  ListView _beerListView(data){
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index){
          return _tile(data[index].name, data[index].tagline, data[index].image_url);
        },
    );
  }
  
  ListTile _tile(String name, String tagline, String image_url){
    return ListTile(
      leading: Image.network(image_url),
      title: Text(name),
      subtitle: Text(tagline),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Cervejas'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: FutureBuilder<List<Beer>>(
            future: _repository.getBeer(),
            builder: (context, snapshot){
              if(snapshot.hasData){
                List<Beer> data = snapshot.data;
                return _beerListView(data);
              } else if (snapshot.hasError){
                print("${snapshot.error}");
              }
              return CircularProgressIndicator();
            }
        ),
      )
    );
  }
}