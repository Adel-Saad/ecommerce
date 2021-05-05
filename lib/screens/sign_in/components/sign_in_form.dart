import 'package:e_commerce_app/components/custom_suffix_icon.dart';
import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/components/error_form.dart';
import 'package:e_commerce_app/screens/login_success/log_in_success.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

import '../../../size_config.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
// props ...
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  final List<String> errors = [];
  bool remember = false;
// Main Build ...
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(16),
          ),
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          buildRememberMeRow(),
          ErrorForm(errors: errors),
          SizedBox(
            width: getProportionateScreenWidth(70),
          ),
          DefaultButton(
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // Navigator.pushNamed(context, LogInSuccess.routeName);
              }
            },
            text: 'Continue',
          ),
        ],
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

//------------------------------------------------------------------------------
  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          errors.add(kShortPassError);
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
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
  Row buildRememberMeRow() {
    return Row(
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
    );
  }
//------------------------------------------------------------------------------
}
