import 'package:e_commerce_app/screens/complete_profile/components/body.dart';
import 'package:flutter/material.dart';

class CompleteProfile extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
