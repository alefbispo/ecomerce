import 'package:flutter/material.dart';

class SingleProductWidget extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productModel;
  final double productPrice;
  final double productOldPrice;
  final Function() onPressed;

  const SingleProductWidget({
    Key? key,
    required this.productImage,
    required this.productName,
    required this.productModel,
    required this.productPrice,
    required this.productOldPrice,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
