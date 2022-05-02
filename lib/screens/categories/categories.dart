// ignore_for_file: deprecated_member_use

import 'package:firstapp/models/jewelries.dart';
import 'package:firstapp/screens/categories/shop.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final categoriesList = ["diamond", "gold", "watch", "necklace"];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: categoriesList
          .map(
            (item) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: BorderSide(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Shop()),
                );
              },
              child: Text(item),
            ),
          )
          .toList(),
    );
  }
}
