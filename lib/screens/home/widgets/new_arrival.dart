import 'package:firstapp/models/jewelries.dart';
import 'package:firstapp/screens/home/widgets/categories_list.dart';
import 'package:firstapp/screens/home/widgets/jewelries_item.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  final jewelryList = Jewelries.generateClothes();
  @override
  Widget build(BuildContext context) {
    print(jewelryList);
    return Container(
      child: Column(
        children: [
          CategoriesList("New Arrival"),
          JewelriesItem(
            Jewelries(
                "Rolex",
                "41mm Rolex 20201 Model Date Just Jubilee Band Full Diamonds",
                "\$25000.00",
                "assets/images/watch.jpg",
                ["assets/images/watch.jpg", "assets/images/watch2.jpg"]),
          ),
          // Container(
          //   child: ListView.separated(
          //       scrollDirection: Axis.horizontal,
          //       itemBuilder: ((context, index) =>
          //           JewelriesItem(jewelryList[index])),
          //       separatorBuilder: (_, index) => SizedBox(width: 10),
          //       itemCount: jewelryList.length),
          // ),
        ],
      ),
    );
  }
}
