import 'package:firstapp/models/jewelries.dart';
import 'package:firstapp/screens/detail/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JewelriesItem extends StatelessWidget {
  final Jewelries jewelries;
  JewelriesItem(this.jewelries);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => DetailPage(jewelries)),
            ),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(jewelries.imageURL),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.4)),
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 22,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    Text(
                      jewelries.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, height: 1.5),
                    ),
                    Text(
                      jewelries.subtitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(height: 1.5),
                    ),
                    Text(
                      jewelries.price,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
