import 'package:flutter/material.dart';
import 'package:pay_flow/modules/login/controller/login_controller.dart';
import 'package:pay_flow/shared/components/social_login/social_login_button.dart';
import 'package:pay_flow/shared/core.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * .3,
              color: AppColors.primary,
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: 373,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: size.height * .2,
              child: Column(
                children: [
                  Image.asset(
                    AppImages.logomini,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 70,
                      right: 70,
                      top: 30,
                    ),
                    child: Text(
                      'Organize seus boletos em um só lugar',
                      style: AppStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: size.height * .05,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 40,
                ),
                child: SocialLoginButton(
                  onTap: () => controller.googlerSignin(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
