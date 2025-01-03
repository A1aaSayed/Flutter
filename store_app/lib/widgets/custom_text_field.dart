import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key, required this.hint, this.onChanged, this.obscure=false, this.inputType}) : super(key: key);


  final String? hint;
  final Function(String)? onChanged;
  final bool obscure;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      keyboardType: inputType,
      onChanged: onChanged,
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          // color: Colors.white,
          fontSize: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(),
        ),
      ),
    );
  }
}
