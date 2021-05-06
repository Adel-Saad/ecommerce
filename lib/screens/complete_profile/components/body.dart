import 'package:e_commerce_app/components/custom_suffix_icon.dart';
import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/components/error_form.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                "Complete Your Details or continue\nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              CompleteprofileForm(),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              Text(
                "by Continue your confirm that you agree\nwith our term and conditions",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
