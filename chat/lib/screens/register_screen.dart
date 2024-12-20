import 'package:chat/constants.dart';
import 'package:chat/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../widgets/button_widget.dart';
import '../widgets/show_snack_bar.dart';
import '../widgets/text_field_widget.dart';
import 'chat_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  static String id = 'registerScreen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? email;
  String? password;
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const SizedBox(height: 100),
                Image.asset(
                  kLogo,
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
                FormTextFieldWidget(
                  hint: 'Email',
                  onChanged: (data) {
                    email = data;
                  },
                ),
                const SizedBox(height: 20),
                FormTextFieldWidget(
                  hint: 'Password',
                  onChanged: (data) {
                    password = data;
                  },
                ),
                const SizedBox(height: 30),
                ButtonWidget(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      setState(() {isLoading = true;});
                      try {
                        await registerUser();
                        showSnackBar(context, 'Register Successful', Colors.green);
                        Navigator.pushNamed(context, ChatScreen.id);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          showSnackBar(context,
                              'The password provided in too weak', Colors.red);
                        } else if (e.code == 'email-already-in-use') {
                          showSnackBar(
                              context,
                              'Account is already exits for that email',
                              Colors.red);
                        }
                      } catch (e) {
                        showSnackBar(context, e.toString(), Colors.red);
                      }
                      setState(() {isLoading = false;});
                    } else {}
                  },
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
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
