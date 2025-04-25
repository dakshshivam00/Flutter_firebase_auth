import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/firebase_options.dart';
import 'package:flutter_firebase_auth/screens/login_email_password_screen.dart';
import 'package:flutter_firebase_auth/screens/login_screen.dart';
import 'package:flutter_firebase_auth/screens/phone_screen.dart';
import 'package:flutter_firebase_auth/screens/signup_email_password_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        EmailPasswordSignup.routeName: (context) => EmailPasswordSignup(),
        EmailPasswordLogin.routeName: (context) => EmailPasswordLogin(),
        PhoneScreen.routeName: (context) => PhoneScreen(),
      },
    );
  }
}