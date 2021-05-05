import 'package:e_commerce_app/components/custom_suffix_icon.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
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
            CompleteprofileForm(),
          ],
        ),
      ),
    );
  }
}

class CompleteprofileForm extends StatefulWidget {
  @override
  _CompleteprofileFormState createState() => _CompleteprofileFormState();
}

class _CompleteprofileFormState extends State<CompleteprofileForm> {
// props ...
  List<String> errors = [];
  String firstName;
  String lastName;
  String address;
  String phoneNumber;

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

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildFirstNameFormField(),
        ],
      ),
    );
  }

//------------------------------------------------------------------------------
  TextFormField buildFirstNameFormField() {
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
      // onSaved: (newValue) => email = newValue,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "First Name",
        hintText: "Enter Your First Name",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
//------------------------------------------------------------------------------
}
