import 'dart:convert' as convert;

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import '../../models/data.dart';

class FavoriteProducts extends StatefulWidget {
  @override
  State<FavoriteProducts> createState() => _FavoriteProductsState();
}

class _FavoriteProductsState extends State<FavoriteProducts> {
  //List<Data> dataObj = [];

  Future<List<Data>> getData() async {
    var url = Uri.parse('https://roejewelry.com/flutter_connection/get.php');
    var response = await http.get(url);
    var data = (convert.jsonDecode(response.body) as List);
    var dataObj = data.map((json) => Data.fromJson(json)).toList();
    print(dataObj.runtimeType);
    return dataObj;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(), // a previously-obtained Future<String> or null
      builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(snapshot.data?[index].title),
                  subtitle: Text(snapshot.data?[index].id),
                );
              });
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
