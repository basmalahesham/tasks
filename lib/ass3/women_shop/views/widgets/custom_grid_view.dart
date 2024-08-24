import 'package:flutter/material.dart';
import 'package:optical/ass3/women_shop/models/product_model.dart';
import 'package:optical/ass3/women_shop/views/widgets/custom_product.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.productModel,
  });

  final List<ProductModel> productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) => CustomProduct(
          model: productModel[index],
        ),
        itemCount: productModel.length,
      ),
    );
  }
}
