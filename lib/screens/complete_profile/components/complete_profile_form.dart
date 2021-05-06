import 'package:e_commerce_app/components/custom_suffix_icon.dart';
import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/components/error_form.dart';
import 'package:e_commerce_app/screens/opt/opt.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

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
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
// methods ...
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
// Main Build ...

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(16),
          ),
          buildLastNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(16),
          ),
          buildPhoneNumberFormField(),
          SizedBox(
            height: getProportionateScreenHeight(16),
          ),
          buildAddressFormField(),
          ErrorForm(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(16),
          ),
          DefaultButton(
            press: () {
              // if (_formkey.currentState.validate()) {
              //   _formkey.currentState.save();
              // }
              Navigator.pushNamed(context, OtpScreen.routeName);
            },
            text: "Continue",
          ),
        ],
      ),
    );
  }

// Widgets ...
//------------------------------------------------------------------------------
  TextFormField buildFirstNameFormField() {
    return TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "First Name",
        hintText: "Enter Your First Name",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
      onSaved: (newValue) => firstName = newValue,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNamelNullError)) {
          setState(() {
            addError(kNamelNullError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          setState(() {
            removeError(kNamelNullError);
          });
        }
        return null;
      },
    );
  }
//------------------------------------------------------------------------------

  TextFormField buildLastNameFormField() {
    return TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Last Name",
        hintText: "Enter Your Last Name",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
      onSaved: (newValue) => lastName = newValue,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNamelNullError)) {
          setState(() {
            addError(kNamelNullError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          setState(() {
            removeError(kNamelNullError);
          });
        }
        return null;
      },
    );
  }
//------------------------------------------------------------------------------

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Phone Number",
        hintText: "Enter Your Phone Number",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
      onSaved: (newValue) => phoneNumber = newValue,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          setState(() {
            addError(kPhoneNumberNullError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            removeError(kPhoneNumberNullError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.number,
    );
  }

//------------------------------------------------------------------------------
  TextFormField buildAddressFormField() {
    return TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Address",
        hintText: "Enter Your Address",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
      onSaved: (newValue) => address = newValue,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            addError(kAddressNullError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            removeError(kAddressNullError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
    );
  }
//------------------------------------------------------------------------------

}
