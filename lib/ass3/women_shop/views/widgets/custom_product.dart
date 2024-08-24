import 'package:flutter/material.dart';
import 'package:optical/ass3/women_shop/models/product_model.dart';
import 'package:optical/ass3/women_shop/views/second_view.dart';

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
        Navigator.pushNamed(context, SecondView.routeName, arguments: model);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 180,
            decoration: BoxDecoration(
              color: model.color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Hero(
              tag: model.id!,
              child: Center(
                  child: Image.asset(
                model.image!,
                width: 150,
              )),
            ),
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
    );
  }
}
