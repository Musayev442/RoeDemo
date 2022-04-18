import 'package:firstapp/models/jewelries.dart';
import 'package:firstapp/screens/detail/widgets/detail_app_bar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Jewelries jewelries;
  DetailPage(this.jewelries);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [DetailAppBar(jewelries)],
          ),
        ),
      ),
    );
  }
}
