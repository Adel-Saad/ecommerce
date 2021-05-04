import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class ErrorForm extends StatelessWidget {
  const ErrorForm({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          List.generate(errors.length, (index) => ErrorText(errors[index])),
    );
  }

  Row ErrorText(String error) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          width: getProportionateScreenWidth(20),
          height: getProportionateScreenHeight(20),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Text(error),
      ],
    );
  }
}
