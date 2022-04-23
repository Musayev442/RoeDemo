import 'package:firstapp/models/jewelries.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final Jewelries jewelries;
  Items(this.jewelries);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(jewelries.categories[jewelries.categories.length - 1])),
      body: Column(
        children: [Text(jewelries.title), Image.asset(jewelries.imageURL)],
      ),
    );
  }
}
