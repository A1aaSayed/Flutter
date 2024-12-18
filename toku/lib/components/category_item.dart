import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({this.text, this.color, this.onTap});

  String? text;
  Color? color;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        width: double.infinity,
        height: 65,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24),
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}