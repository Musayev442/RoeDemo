import 'package:firstapp/screens/home/widgets/best_seller.dart';
import 'package:firstapp/screens/home/widgets/custom_app_bar.dart';
import 'package:firstapp/screens/home/widgets/new_arrival.dart';
import 'package:firstapp/screens/home/widgets/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(),
          SearchInput(),
          NewArrival(),
          BestSeller(),
        ],
      ),
    );
  }
}
