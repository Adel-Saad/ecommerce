import 'package:e_commerce_app/screens/opt/components/body.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP verification"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
