import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/screens/details/components/product_description.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(20),
          top: getProportionateScreenWidth(08)),
      margin: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(08)),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Colors.white,
      ),
      child: ProductDescription(
        product: product,
        pressOnSeeMore: () {},
      ),
    );
  }
}
