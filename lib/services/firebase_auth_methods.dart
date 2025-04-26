import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/utils/showSnackBar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

  // Sign In
  Future<void> signInWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await sendEmailVerification(context);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

Future<void> sendEmailVerification(BuildContext context) async {
  try {
    await _auth.currentUser!.sendEmailVerification();
    showSnackBar(context, "Email verification sent! Please check your inbox.");
  } on FirebaseAuthException catch (e) {
    showSnackBar(context, e.message!);
  }
}
}