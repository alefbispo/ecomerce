import 'package:flutter/material.dart';

import '../../../data/home-page-data/home_page_data.dart';
import '../../../widgets/single_product_widget.dart';

class TabBatBar extends StatelessWidget {
  const TabBatBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: sigleProductData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        var data = sigleProductData[index];
        return SingleProductWidget(
          onPressed: () {},
          productImage: data.productImage,
          productName: data.productName,
          productModel: data.productModel,
          productPrice: data.productPrice,
          productOldPrice: data.productOldPrice,
        );
      },
    );
  }
}
