import 'package:flutter/material.dart';
import 'package:pay_flow/modules/app_routes.dart';
import 'package:pay_flow/modules/barcode_scanner/barcode_scanner_screen.dart';
import 'package:pay_flow/modules/home/home_screen.dart';
import 'package:pay_flow/modules/insert_boleto/insert_boleto_screen.dart';
import 'package:pay_flow/modules/login/login_screen.dart';
import 'package:pay_flow/modules/splash/splash_screen.dart';
import 'package:pay_flow/shared/core.dart';
import 'package:pay_flow/shared/models/user_model.dart';

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
        AppRoutes.home: (context) => HomeScreen(
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
            ),
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.barcodeScanner: (context) => BarcodeScannerScreen(),
        AppRoutes.insertBoleto: (context) => InsertBoletoScreen(
              barcode: ModalRoute.of(context) != null
                  ? ModalRoute.of(context)!.settings.arguments.toString()
                  : null,
            ),
      },
    );
  }
}
