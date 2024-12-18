import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: const Text(
          'TOKU',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          CategoryItem(
            text: 'Numbers',
            color: const Color(0xffef9235),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
          ),
          CategoryItem(
            text: 'Family Members',
            color: const Color(0xff558b37),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyScreen();
              }));
            },
          ),
          CategoryItem(
            text: 'Colors',
            color: const Color(0xff79359f),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ColorsScreen();
              }));
            },
          ),
          CategoryItem(
            text: 'Phrases',
            color: const Color(0xff50adc7),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const PhrasesScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
