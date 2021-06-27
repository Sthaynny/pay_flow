import 'package:flutter/material.dart';
import 'package:pay_flow/modules/app_routes.dart';
import 'package:pay_flow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;
  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      _user = user;
      saveUser(user);
      Navigator.pushReplacementNamed(context, AppRoutes.home, arguments: user);
    } else {
      Navigator.pushReplacementNamed(context, AppRoutes.login);
    }
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    instance.setString('user', user.toJson());
  }

  Future<void> currentUser(
    BuildContext context,
  ) async {
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 2));
    if (instance.containsKey('user')) {
      final user = instance.get('user') as String;
      setUser(context, UserModel.fromJson(user));
    } else {
      setUser(context, null);
    }
  }

  UserModel get user => _user!;
}
