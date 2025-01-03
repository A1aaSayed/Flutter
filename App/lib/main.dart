import 'package:app/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false, // Use Material 2 styles
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
  
}