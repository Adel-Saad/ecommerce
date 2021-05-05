import 'package:e_commerce_app/components/no_account_form.dart';
import 'package:e_commerce_app/screens/sign_up/components/sign_up_form.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Register Account ",
              style: headingStyle,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.01,
            ),
            Text("Complete Your Details or continue\nwith Social Media",
                textAlign: TextAlign.center),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            SignUpForm(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.03,
            ),
            Text(
              "By Continuing your confirm that you agree\nwith our  Terms and conditions",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
