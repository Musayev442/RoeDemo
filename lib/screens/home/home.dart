// ignore_for_file: deprecated_member_use

import 'package:firstapp/models/jewelries.dart';
import 'package:firstapp/screens/profile/profile.dart';
import 'package:firstapp/screens/favorites/favorite_product.dart';
import 'package:firstapp/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../models/data.dart';
import '../Categories/categories.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final jewelryList = Jewelries.generateJewelries();
  final bottomlist = ["home", "menu", "heart", "user"];
  final menu = [HomePage(), Categories(), FavoriteProducts(), Profile()];
  int currentIndex = 0;

  late Future<Data> futureData;

  Future<Data> getData() async {
    var request = http.Request(
        'GET', Uri.parse('https://roejewelry.com/flutter_connection/get.php'));

    return Data.fromJson(convert.jsonDecode(request.body));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureData = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Icon(
          Icons.list,
          size: 30,
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: IndexedStack(
        index: currentIndex,
        children: menu,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: bottomlist
            .map(
              (item) => BottomNavigationBarItem(
                label: item,
                icon: Image.asset(
                  'assets/icons/$item.png',
                  width: 25,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
