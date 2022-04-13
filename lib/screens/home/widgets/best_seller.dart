import 'package:firstapp/screens/home/widgets/categories_list.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [CategoriesList("Best Seller")],
      ),
    );
  }
}
