import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWzCounter extends StatelessWidget {
  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  const IconBtnWzCounter({
    @required this.svgSrc,
    this.numOfItems = 0,
    @required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: press,
      child: Stack(overflow: Overflow.visible, children: [
        Container(
            padding: EdgeInsets.all(
              getProportionateScreenWidth(12),
            ),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc)),
        if (numOfItems != 0)
          Positioned(
            right: 0,
            top: 3,
            child: Container(
              width: getProportionateScreenWidth(20),
              height: getProportionateScreenWidth(20),
              decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.5,
                  )),
              child: Text(
                "${numOfItems}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(10),
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
      ]),
    );
  }
}
