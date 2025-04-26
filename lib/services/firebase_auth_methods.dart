import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/utils/showSnackBar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

//   Future<void> signInWithEmail({
//   required String email,
//   required String password,
//   required BuildContext context,
// }) async {
//   try {
//     print("➡ Trying to create user...");
//     UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );

//     print("✅ User created");

//     User? user = userCredential.user;

//     if (user != null) {
//       print("➡ Trying to send email verification...");

//       await user.sendEmailVerification();

//       print("✅ Verification email sent");

//       if (context.mounted) {
//         showSnackBar(context, "Verification email sent! Please check your inbox.");
//       }
//     } else {
//       print("❌ User is null");
//       if (context.mounted) {
//         showSnackBar(context, "Sign up failed. User is null.");
//       }
//     }
//   } on FirebaseAuthException catch (e) {
//     print("❗ FirebaseAuthException: ${e.code} - ${e.message}");
//     if (context.mounted) {
//       String errorMessage = "An error occurred during sign up";
//       switch (e.code) {
//         case 'email-already-in-use':
//           errorMessage = "This email is already registered";
//           break;
//         case 'invalid-email':
//           errorMessage = "Invalid email address";
//           break;
//         case 'operation-not-allowed':
//           errorMessage = "Email/password accounts are not enabled";
//           break;
//         case 'weak-password':
//           errorMessage = "Password is too weak";
//           break;
//         default:
//           errorMessage = e.message ?? errorMessage;
//       }
//       showSnackBar(context, errorMessage);
//     }
//   } catch (e) {
//     print("❗ General Exception: $e");
//     if (context.mounted) {
//       showSnackBar(context, "Sign up failed. Please try again.");
//     }
//   }
// }

// .........................................................................................

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



  // Future<void> signInWithEmail({
  //   required String email,
  //   required String password,
  //   required BuildContext context,
  // }) async {y

  //   try {
  //     // Create user with proper error handling
  //     final user = await _auth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );

  //     if (user.user != null) {
  //       try {
  //         // Send verification email
  //         await _auth.currentUser?.sendEmailVerification();
  //         if (context.mounted) {
  //           showSnackBar(context, "Email verification sent! Please check your inbox.");
  //         }
  //       } catch (verificationError) {
  //         if (context.mounted) {
  //           showSnackBar(context, "Failed to send verification email. Please try again.");
  //         }
  //       }
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     if (context.mounted) {
  //       String errorMessage = "An error occurred during sign up";
  //       switch (e.code) {
  //         case 'email-already-in-use':
  //           errorMessage = "This email is already registered";
  //           break;
  //         case 'invalid-email':
  //           errorMessage = "Invalid email address";
  //           break;
  //         case 'operation-not-allowed':
  //           errorMessage = "Email/password accounts are not enabled";
  //           break;
  //         case 'weak-password':
  //           errorMessage = "Password is too weak";
  //           break;
  //         default:
  //           errorMessage = e.message ?? errorMessage;
  //       }
  //       showSnackBar(context, errorMessage);
  //     }
  //   } catch (e) {
  //     if (context.mounted) {
  //       showSnackBar(context, "Sign up failed. Please try again.");
  //     }
  //   }
  // }
}
