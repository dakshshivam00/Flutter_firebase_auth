import 'package:flutter_firebase_auth/screens/login_email_password_screen.dart';
import 'package:flutter_firebase_auth/screens/phone_screen.dart';
import 'package:flutter_firebase_auth/screens/signup_email_password_screen.dart';
import 'package:flutter_firebase_auth/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Auth'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10,
            children: [
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, EmailPasswordSignup.routeName);
                },
                text: 'Email/Password Sign Up',
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, EmailPasswordLogin.routeName);
                },
                text: 'Email/Password Login',
              ),
              CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, PhoneScreen.routeName);
                  },
                  text: 'Phone Sign In'),
              CustomButton(
                onTap: () {
                },
                text: 'Google Sign In',
              ),
              CustomButton(
                onTap: () {
                },
                text: 'Facebook Sign In',
              ),
              CustomButton(
                onTap: () {
                },
                text: 'Anonymous Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}