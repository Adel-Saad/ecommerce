import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/screens/home/components/categories.dart';
import 'package:e_commerce_app/screens/home/components/discount_banner.dart';
import 'package:e_commerce_app/screens/home/components/popular_products.dart';
import 'package:e_commerce_app/screens/home/components/section_title.dart';
import 'package:e_commerce_app/screens/home/components/special_offer.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(16)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(16)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(16)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(16)),
            SpecialOffer(),
            SizedBox(height: getProportionateScreenWidth(20)),
            SectionTitle(
              text: "Popular Products",
              press: () {},
            ),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}
