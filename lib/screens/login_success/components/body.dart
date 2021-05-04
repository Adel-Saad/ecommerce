import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../size_config.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.40,
          width: SizeConfig.screenWidth,
        ),
        Spacer(),
        Text(
          "Login Success",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(24)),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.screenWidth * 0.20,
          ),
          child: DefaultButton(
            press: () {},
            text: "Back to Home",
          ),
        ),
        Spacer()
      ],
    );
  }
}
