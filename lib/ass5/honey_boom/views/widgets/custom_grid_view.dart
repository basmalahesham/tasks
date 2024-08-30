import 'package:flutter/material.dart';
import 'package:optical/ass5/honey_boom/database/database.dart';
import 'package:optical/ass5/honey_boom/models/product_model.dart';
import 'package:optical/ass5/honey_boom/views/widgets/custom_product.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({
    super.key,
    required this.productModel,
  });

  final List<ProductModel> productModel;

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {

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
          model: widget.productModel[index],
        ),
        itemCount: widget.productModel.length,
      ),
    );
  }
}
