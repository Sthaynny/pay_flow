import 'package:flutter/material.dart';
import 'package:pay_flow/modules/app_routes.dart';
import 'package:pay_flow/modules/home/home_screen.dart';
import 'package:pay_flow/modules/login/login_screen.dart';
import 'package:pay_flow/modules/splash/splash_screen.dart';
import 'package:pay_flow/shared/core.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      initialRoute: AppRoutes.initRoute,
      routes: {
        AppRoutes.initRoute: (context) => SplashScreen(),
        AppRoutes.home: (context) => HomeScreen(),
        AppRoutes.login: (context) => LoginScreen(),
      },
    );
  }
}
