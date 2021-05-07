import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/screens/home/home.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import '../components/otp_form.dart';
import '../../../constants.dart';

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
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "OTP Verifcation",
                style: headingStyle,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text("We sent your code to +1 899 86 *** ",
                  textAlign: TextAlign.center),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.10,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              DefaultButton(
                press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                text: "Continue",
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.10,
              ),
              Text("resend OTP"),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This Code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
