// ignore_for_file: deprecated_member_use

import 'package:firstapp/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    // ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xFFFFAFAFA),
        primaryColor: Color(0xFFFFBD00),
        accentColor: Color(0xFFFFEBC7),
      ),
      home: SafeArea(child: HomePage()),
    );
  }
}
