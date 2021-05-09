import 'package:e_commerce_app/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductImages extends StatefulWidget {
// props ...
  final Product product;
// constr ...
  ProductImages({
    @required this.product,
  });
// main build
  @override
  _ProductImagesState createState() => _ProductImagesState();
}

// ===== STATE =================================================================
class _ProductImagesState extends State<ProductImages> {
// props ...
  int selectedImage = 0;
// build ...
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1.2,
            child: Hero(
              tag: widget.product.id,
              child: Image.asset(
                widget.product.images[selectedImage],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildSmallPreview(index),
            ),
          ],
        ),
      ],
    );
  }

//------------------------------------------------------------------------------
  Widget buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
        padding: EdgeInsets.all(getProportionateScreenWidth(04)),
        width: getProportionateScreenWidth(48),
        height: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          border: Border.all(
              color:
                  selectedImage == index ? kPrimaryColor : Colors.transparent),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
//==============================================================================
}
