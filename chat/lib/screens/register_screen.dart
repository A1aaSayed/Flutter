import 'package:chat/constants.dart';
import 'package:chat/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/text_field_widget.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  static String id = 'registerScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: ListView(
          children: [
            const SizedBox(height: 100),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholar Chat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'pacifico',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            const Row(
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const TextFieldWidget(hint: 'Email'),
            const SizedBox(height: 20),
            const TextFieldWidget(hint: 'Password'),
            const SizedBox(height: 30),
            const Button(
              text: 'REGISTER',
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "already have an account?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    '   Login',
                    style: TextStyle(
                      color: Color(0xffc7ede6),
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
