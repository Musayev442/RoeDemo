import 'package:firstapp/models/jewelries.dart';
import 'package:flutter/material.dart';

class JewelriesInfo extends StatelessWidget {
  Jewelries jewelries;
  JewelriesInfo(this.jewelries);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '${jewelries.title}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.star_border,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text("4.5 (2.3k)"),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                '${jewelries.subtitle}',
              ),
            ),
            Text(
                "Step up your style game with this exquisite Rolex 20201 Model Date Just Jubilee Band watch. With its blingy full diamond casing and band, this watch is sure to turn heads wherever you go."),
          ],
        ),
      ),
    );
  }
}
