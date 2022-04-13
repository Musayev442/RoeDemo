import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final tagsList = [
    "Diamond",
    "Gold",
    "Earrings",
    "Watch",
    "Necklace",
    "Ring",
    "Pendat",
    "Bracelet"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Search items',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      prefixIcon: Container(
                        child: Icon(Icons.search),
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.manage_search,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Wrap(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: tagsList
                .map(
                  (tag) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).accentColor),
                    margin: EdgeInsets.only(top: 10, right: 10),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      tag,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
