import 'package:e_commerce_app/screens/complete_profile/complete_profile.dart';
import 'package:e_commerce_app/screens/details/details.dart';
import 'package:e_commerce_app/screens/forget_password/forgot_password.dart';
import 'package:e_commerce_app/screens/home/home.dart';
import 'package:e_commerce_app/screens/login_success/log_in_success.dart';
import 'package:e_commerce_app/screens/opt/opt.dart';
import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app/screens/sign_up/sign_up.dart';
import 'package:e_commerce_app/screens/splash/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  LogInSuccess.routeName: (context) => LogInSuccess(),
  SignUp.routeName: (context) => SignUp(),
  CompleteProfile.routeName: (context) => CompleteProfile(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};
