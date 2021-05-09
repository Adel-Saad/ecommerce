import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/components/rounded_icon_btn.dart';
import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/screens/details/components/product_images.dart';
import 'package:e_commerce_app/screens/details/components/top_rounded_container.dart';
import 'package:e_commerce_app/size_config.dart';
import '../components/colored_dots.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({
    @required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(product: product),
        ColoredDots(product: product),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(35)),
          child: DefaultButton(
            press: () {},
            text: "Add To Cart",
          ),
        )
      ],
    );
  }
}
