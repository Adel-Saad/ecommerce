import 'package:e_commerce_app/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            demoProducts.length,
            (index) => PopularProductsCard(
              product: demoProducts[index],
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          )
        ],
      ),
    );
  }
}

class PopularProductsCard extends StatelessWidget {
  final Product product;

  PopularProductsCard({
    @required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                width: getProportionateScreenWidth(140),
                height: getProportionateScreenWidth(140),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12,
                ),
                child: Image.asset(
                  product.images[0],
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenWidth(06),
          ),
          SizedBox(
            width: getProportionateScreenWidth(140),
            child: Text(
              product.title,
              style: TextStyle(fontSize: 14),
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(140),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Text(
                    "\$${product.price}",
                    style: TextStyle(fontSize: 16, color: kPrimaryColor),
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(05)),
                    width: getProportionateScreenWidth(28),
                    height: getProportionateScreenWidth(28),
                    decoration: BoxDecoration(
                        color: product.isFavourite
                            ? kPrimaryColor.withOpacity(0.1)
                            : kSecondaryColor.withOpacity(0.10),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      color:
                          product.isFavourite ? kPrimaryColor : kSecondaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
