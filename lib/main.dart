import 'package:flutter/material.dart';
import 'package:personal_web/src/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akora Ing. DKB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Ubuntu',
      ),
      home: MainPage(),
    );
  }
}
