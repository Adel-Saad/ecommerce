import 'package:e_commerce_app/components/custom_suffix_icon.dart';
import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/components/error_form.dart';
import 'package:e_commerce_app/screens/login_success/log_in_success.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = ["Demo Error"];
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          Row(
            children: [
              Checkbox(
                activeColor: kPrimaryColor,
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text('Remember me'),
              Spacer(),
              Text(
                'Forget Pasword ?',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
          ErrorForm(errors: errors),
          SizedBox(
            width: getProportionateScreenWidth(70),
          ),
          DefaultButton(
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, LogInSuccess.routeName);
              }
            },
            text: 'Continue',
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Email",
        hintText: "Enter Your Email",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          setState(() {
            errors.add("please Enter Your Password");
          });
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Password",
        hintText: "Enter Your Password",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}
