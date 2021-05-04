import 'package:e_commerce_app/components/no_account_form.dart';
import 'package:e_commerce_app/components/social_card.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/screens/sign_in/components/sign_in_form.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(04),
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                SignInForm(),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      svg: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      svg: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      svg: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(36),
                ),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
