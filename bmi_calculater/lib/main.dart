import 'package:bmi_calculater/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiCalculater());
}

class BmiCalculater extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
