// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final categoryList = ["diamond", "gold", "watch", "necklace"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFBF6F0),
      child: ListView.builder(
        itemCount: categoryList.length, //category length
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              leading: const Icon(Icons.diamond),
              title: Text(categoryList[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
          );
        },
      ),
    );
  }
}

























// onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Shop()),
//                 );
//               }