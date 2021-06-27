import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pay_flow/shared/auth/auth.dart';
import 'package:pay_flow/shared/models/user_model.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googlerSignin(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );
    try {
      final response = await _googleSignIn.signIn();
      authController.setUser(
        context,
        UserModel(
          name: response!.displayName!,
          photoUrl: response.photoUrl,
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
