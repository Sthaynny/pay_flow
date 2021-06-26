import 'package:flutter/material.dart';
import 'package:pay_flow/modules/login/login_screen.dart';
import 'package:pay_flow/shared/core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: LoginScrren(),
    );
  }
}
