import 'package:e_commerce_app/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
// props ...
  final Product product;
  final GestureTapCallback pressOnSeeMore;
// constr ...
  const ProductDescription({
    @required this.product,
    @required this.pressOnSeeMore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: getProportionateScreenWidth(08),
        ),
        Text(
          product.title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(12),
            width: getProportionateScreenWidth(60),
            height: getProportionateScreenWidth(43),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
              color: kPrimaryColor.withOpacity(0.10),
            ),
            child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                color: product.isFavourite ? Colors.red.shade300 : Colors.grey),
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(04),
        ),
        Padding(
          padding: EdgeInsets.only(right: getProportionateScreenWidth(60)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(04),
        ),
        GestureDetector(
          onTap: pressOnSeeMore,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "See More Details ",
                style: TextStyle(color: kPrimaryColor),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: kPrimaryColor,
                size: getProportionateScreenWidth(14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
