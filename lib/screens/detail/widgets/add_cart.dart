import 'package:firstapp/models/jewelries.dart';
import 'package:flutter/material.dart';

class AddCart extends StatelessWidget {
  final Jewelries jewelries;
  AddCart(this.jewelries);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Text(
              jewelries.price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 60,
              child: Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("Add to cart"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.shopping_cart_checkout_outlined),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
