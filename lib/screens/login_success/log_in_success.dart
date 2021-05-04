import 'package:e_commerce_app/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';

class LogInSuccess extends StatefulWidget {
  static String routeName = "/log_in_success";
  @override
  _LogInSuccessState createState() => _LogInSuccessState();
}

class _LogInSuccessState extends State<LogInSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Success"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
