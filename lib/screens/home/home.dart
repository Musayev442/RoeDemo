import 'package:firstapp/screens/home/widgets/best_seller.dart';
import 'package:firstapp/screens/home/widgets/custom_app_bar.dart';
import 'package:firstapp/screens/home/widgets/new_arrival.dart';
import 'package:firstapp/screens/home/widgets/search_input.dart';
import 'package:flutter/material.dart';

import '../../models/jewelries.dart';

class HomePage extends StatelessWidget {
  final bottomlist = ["home", "menu", "heart", "user"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(),
            SearchInput(),
            NewArrival(),
            BestSeller(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: bottomlist
            .map(
              (item) => BottomNavigationBarItem(
                label: item,
                icon: Image.asset(
                  'assets/icons/$item.png',
                  width: 25,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
