import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import '../../models/data.dart';

class FavoriteProducts extends StatefulWidget {
  @override
  State<FavoriteProducts> createState() => _FavoriteProductsState();
}

class _FavoriteProductsState extends State<FavoriteProducts> {
  var response;
  List<Data> dataObj = [];
  List data = [];
  Future getData() async {
    var url = Uri.parse('https://roejewelry.com/flutter_connection/get.php');
    response = await http.get(url);
    data = jsonDecode(response.body);
    dataObj = data.map((json) => Data.fromJson(json)).toList();
    print(dataObj[5].postTitle);
    print(dataObj.length);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    List title = [];
    for (var item in dataObj) {
      title.add(item.postTitle);
    }
    return ListView(
      children: title.map((e) => Text(e.toString())).toList(),
    );
  }
}
