import 'package:e_commerce_app/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special For You",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(08)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/Image Banner 2.png",
                number: 18,
                press: () {},
                text: "Smart Phones",
              ),
              SpecialOfferCard(
                image: "assets/images/Image Banner 3.png",
                number: 24,
                press: () {},
                text: "Fashion  ",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  final String text;
  final String image;
  final int number;
  final GestureTapCallback press;

  SpecialOfferCard({
    @required this.text,
    @required this.image,
    @required this.number,
    @required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(08)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black54.withOpacity(0.50),
                      Colors.black54.withOpacity(0.07),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Text.rich(
                  TextSpan(style: TextStyle(color: Colors.white), children: [
                    TextSpan(
                      text: "$text\n",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "${number} Brands"),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
