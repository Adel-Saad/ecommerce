import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode focusNode2;
  FocusNode focusNode3;
  FocusNode focusNode4;

  @override
  void initState() {
    super.initState();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
  }

  void nextFocus({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextFocus(value: value, focusNode: focusNode2);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: focusNode2,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextFocus(value: value, focusNode: focusNode3);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: focusNode3,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextFocus(value: value, focusNode: focusNode4);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: focusNode4,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
              decoration: otpInputDecoration,
              onChanged: (value) {
                focusNode4.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
