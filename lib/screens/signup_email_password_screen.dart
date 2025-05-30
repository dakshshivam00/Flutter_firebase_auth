import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/services/firebase_auth_methods.dart';
import 'package:flutter_firebase_auth/widgets/custom_button.dart';
import 'package:flutter_firebase_auth/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class EmailPasswordSignup extends StatefulWidget {
  static String routeName = '/signup-email-password';
  const EmailPasswordSignup({Key? key}) : super(key: key);

  @override
  _EmailPasswordSignupState createState() => _EmailPasswordSignupState();
}

class _EmailPasswordSignupState extends State<EmailPasswordSignup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUpUser() async {
    FirebaseAuthMethods(FirebaseAuth.instance).signInWithEmail(
        email: emailController.text,
        password: passwordController.text,
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Sign Up",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          CustomTextField(
            controller: emailController,
            hintText: 'Enter your email',
          ),
          const SizedBox(height: 20),
          CustomTextField(
            controller: passwordController,
            hintText: 'Enter your password',
          ),
          const SizedBox(height: 20),
          CustomButton(
              onTap: () {
                signUpUser();
                print("Signed Up");
              },
              text: "Sign Up"),
          // ElevatedButton(
          //   onPressed: (){
          //     print("Signed Up");
          //   },
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(Colors.blue),
          //     textStyle: MaterialStateProperty.all(
          //       const TextStyle(color: Colors.white),
          //     ),
          //     minimumSize: MaterialStateProperty.all(
          //       Size(MediaQuery.of(context).size.width / 2.5, 50),
          //     ),
          //   ),
          //   child: const Text(
          //     "Sign Up",
          //     style: TextStyle(color: Colors.white, fontSize: 16),
          //   ),
          // ),
        ],
      ),
    );
  }
}
