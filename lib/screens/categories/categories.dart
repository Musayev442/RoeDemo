// ignore_for_file: deprecated_member_use

import 'package:firstapp/models/jewelries.dart';
import 'package:firstapp/screens/categories/items.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final categoriesList = ["diamond", "gold", "watch", "necklace"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: categoriesList
            .map(
              (category) => Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Items(category)),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 0.1,
                              blurRadius: 0.1,
                              offset: Offset(0, 1),
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(Icons.diamond_outlined),
                              ),
                              Text(
                                category,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
