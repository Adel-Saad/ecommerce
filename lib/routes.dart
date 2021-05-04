import 'package:e_commerce_app/screens/forget_password/forgot_password.dart';
import 'package:e_commerce_app/screens/login_success/log_in_success.dart';
import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app/screens/splash/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  LogInSuccess.routeName: (context) => LogInSuccess(),
};
