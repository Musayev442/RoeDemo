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
          Container(
            height: 350,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) =>
                    JewelriesItem(jewelryList[index])),
                separatorBuilder: (_, index) => SizedBox(width: 10),
                itemCount: jewelryList.length),
          ),
        ],
      ),
    );
  }
}
