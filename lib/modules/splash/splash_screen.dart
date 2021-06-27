import 'package:flutter/material.dart';
import 'package:pay_flow/shared/auth/auth.dart';
import 'package:pay_flow/shared/core.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AuthController authController = AuthController();
  @override
  void initState() {
    super.initState();
    authController.currentUser(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              AppImages.union,
            ),
          ),
          Center(
            child: Image.asset(
              AppImages.logoFull,
            ),
          )
        ],
      ),
    );
  }
}
