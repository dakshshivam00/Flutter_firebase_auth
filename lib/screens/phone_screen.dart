import 'package:flutter_firebase_auth/widgets/custom_button.dart';
import 'package:flutter_firebase_auth/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class PhoneScreen extends StatefulWidget {
  static String routeName = '/phone';
  const PhoneScreen({Key? key}) : super(key: key);

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            controller: phoneController,
            hintText: 'Enter phone number',
          ),
          SizedBox(height: 20),
          CustomButton(
            onTap: () {
              print("Send OTP");
            },
            text: 'Send OTP',
          ),
        ],
      ),
    );
  }
}