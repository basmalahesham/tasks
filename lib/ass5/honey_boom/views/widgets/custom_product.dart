import 'package:flutter/material.dart';
import 'package:optical/ass5/honey_boom/models/product_model.dart';
import 'package:optical/ass5/honey_boom/views/product_details.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({
    super.key,
    required this.model,
  });
  final ProductModel model;
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductDetails.routeName,
            arguments: model);
      },
      child: Card(
        color: const Color(0xfffdfdfd),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(model.image!),
              width: 200,
              height: 150,
            ),
            Text(
              model.title!,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              '\$${model.price}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
