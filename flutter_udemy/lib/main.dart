import 'package:flutter/material.dart';
import 'package:newproject/home_screen.dart';

void main()
{
  // need widget as a parameter
  runApp(MyApp());
}

// class MyApp
class MyApp extends StatelessWidget
{
  // constructor
  // build method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }

}