import 'package:e_commerce_app/screens/home/components/icon_btn_wz_counter.dart';
import 'package:e_commerce_app/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWzCounter(
            press: () {},
            svgSrc: "assets/icons/Cart Icon.svg",
          ),
          IconBtnWzCounter(
            numOfItems: 3,
            press: () {},
            svgSrc: "assets/icons/Bell.svg",
          ),
        ],
      ),
    );
  }
}
