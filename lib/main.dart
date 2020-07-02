import 'package:flutter/material.dart';
import 'home_page.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator Bitch',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.white
        ),
        home: new HomePage(),
      );
  }
}