import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        message,
      ),
    ),
  );
}