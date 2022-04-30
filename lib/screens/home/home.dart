// ignore_for_file: deprecated_member_use

import 'package:firstapp/models/jewelries.dart';
import 'package:firstapp/screens/profile/profile.dart';
import 'package:firstapp/screens/favorites/favorite_product.dart';
import 'package:firstapp/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import '../Categories/categories.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final jewelryList = Jewelries.generateJewelries();
  final bottomlist = ["home", "menu", "heart", "user"];
  final menu = [HomePage(), Categories(), FavoriteProducts(), Profile()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: const Icon(
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
