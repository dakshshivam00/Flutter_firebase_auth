import 'package:flutter_firebase_auth/widgets/custom_button.dart';
import 'package:flutter_firebase_auth/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class EmailPasswordLogin extends StatefulWidget {
  static String routeName = '/login-email-password';
  const EmailPasswordLogin({Key? key}) : super(key: key);

  @override
  _EmailPasswordLoginState createState() => _EmailPasswordLoginState();
}

class _EmailPasswordLoginState extends State<EmailPasswordLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // void loginUser() {
  //   context.read<FirebaseAuthMethods>().loginWithEmail(
  //         email: emailController.text,
  //         password: passwordController.text,
  //         context: context,
  //       );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
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
                print("Login");
              },
              text: "Login"),
        ],
      ),
    );
  }
}
