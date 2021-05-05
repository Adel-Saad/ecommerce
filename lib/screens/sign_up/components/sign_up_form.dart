import 'package:e_commerce_app/components/custom_suffix_icon.dart';
import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/components/error_form.dart';
import 'package:e_commerce_app/components/social_card.dart';
import 'package:e_commerce_app/screens/complete_profile/complete_profile.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
// props ...
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            buildPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            buildConfirmPasswordFormField(),
            ErrorForm(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            DefaultButton(
              press: () {
                if (_formKey.currentState.validate()) {}
                Navigator.pushNamed(context, CompleteProfile.routeName);
              },
              text: "Continue",
            ),
            SizedBox(
              height: getProportionateScreenHeight(16),
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
          ],
        ),
      ),
    );
  }

//------------------------------------------------------------------------------
  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kConfPassNullError)) {
          setState(() {
            addError(kConfPassNullError);
          });
        } else if (value != password && !errors.contains(kMatchPassError)) {
          setState(() {
            addError(kMatchPassError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kConfPassNullError)) {
          setState(() {
            removeError(kConfPassNullError);
          });
        } else if (value == password && errors.contains(kMatchPassError)) {
          setState(() {
            removeError(kMatchPassError);
          });
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Confirm Password",
        hintText: "Confirm Your Password",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

//------------------------------------------------------------------------------
  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            addError(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            addError(kShortPassError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            removeError(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            removeError(kShortPassError);
          });
        }
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

//------------------------------------------------------------------------------
  void addError(String error) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

//------------------------------------------------------------------------------
  void removeError(String error) {
    if (errors.contains(error)) {
      errors.remove(error);
    }
  }

//------------------------------------------------------------------------------
  TextFormField buildEmailFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            addError(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            addError(kInvalidEmailError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            removeError(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            removeError(kEmailNullError);
          });
        }
        return null;
      },
      onSaved: (newValue) => email = newValue,
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
}
