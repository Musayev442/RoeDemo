import 'package:firstapp/models/jewelries.dart';
import 'package:firstapp/screens/home/widgets/categories_list.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  List<String> jwList = [
    "Rolex",
    "41mm Rolex 20201 Model Date Just Jubilee Band Full Diamonds",
    "\$25000.00",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CategoriesList("Best Seller"),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/watch_front_1.jpg',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            jwList[0],
                            style: TextStyle(
                                height: 1.5, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 200,
                            child: Text(jwList[1]),
                          ),
                          Text(
                            jwList[2],
                            style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
