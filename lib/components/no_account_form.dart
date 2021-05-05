import 'package:e_commerce_app/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Dont Have an Account ?'),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUp.routeName);
          },
          child: Text(
            ' Sign up',
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
