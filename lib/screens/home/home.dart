import 'package:firstapp/screens/home/widgets/custom_app_bar.dart';
import 'package:firstapp/screens/home/widgets/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [CustomAppBar(), SearchInput()],
        ),
      ),
    );
  }
}
