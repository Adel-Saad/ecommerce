import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
// props ...
  final String svg;
  final Function press;
// constructore ...
  const SocialCard({
    Key key,
    @required this.svg,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(
          getProportionateScreenWidth(12),
        ),
        height: getProportionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration:
            BoxDecoration(color: Color(0XFFF5F6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(svg),
      ),
    );
  }
}
