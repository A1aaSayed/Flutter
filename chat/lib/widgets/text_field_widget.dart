import 'package:flutter/material.dart';

class FormTextFieldWidget extends StatelessWidget {
  const FormTextFieldWidget({Key? key, required this.hint, this.onChanged, this.obscure=false}) : super(key: key);


  final String? hint;
  final Function(String)? onChanged;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
      },
      onChanged: onChanged,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
