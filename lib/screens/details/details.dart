import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/screens/details/components/body.dart';
import 'package:flutter/material.dart';

import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/DetailsScreen";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color(0XFFF5F6F9),
      appBar: CustomAppBar(
        rating: arguments.product.rating,
      ),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({
    @required this.product,
  });
}
