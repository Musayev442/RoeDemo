import 'package:firstapp/models/jewelries.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final jewelryList = Jewelries.generateJewelries();
  String category;
  Items(this.category);
  @override
  Widget build(BuildContext context) {
    for (var x in jewelryList) {
      for (var i in x.categories) {
        if (jewelryList.contains(category)) {
          return Scaffold(
            appBar: AppBar(title: Text(category)),
            body: ListView(children: []),
          );
        }
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Text("Page Not Found"),
    );
  }
}
