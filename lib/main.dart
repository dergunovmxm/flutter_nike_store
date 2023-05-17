import 'package:flutter/material.dart';
import 'package:flutter_nike_store/pages/LoginPage.dart';
import 'package:flutter_nike_store/pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFCEDDEE),
      ),
      routes: {
        "/": (contex) => LoginPage(),
        "homePage": (context) => HomePage()
      },
    );
  }
}
