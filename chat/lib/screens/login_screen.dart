import 'package:chat/constants.dart';
import 'package:chat/screens/register_screen.dart';
import 'package:chat/widgets/button.dart';
import 'package:chat/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  'Login',
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
              text: 'LOGIN',
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                  child: const Text(
                      '   Register',
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
