import 'package:flutter/material.dart';
import 'package:optical/ass3/women_shop/models/product_model.dart';
import 'package:optical/ass3/women_shop/views/widgets/custom_grid_view.dart';

class DressesView extends StatelessWidget {
  DressesView({
    super.key,
  });
  List<ProductModel> productModel = [
    ProductModel(
      image: 'assets/images/women_shop/dress1.png',
      title: 'Office Code',
      price: 233,
      color: const Color(0xFFB5A387),
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress2.png',
      title: 'Office Code',
      price: 333,
      color: const Color(0xC7E1BC34),
      id: 2,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress3.png',
      title: 'Office Code',
      price: 433,
      color: const Color(0xFF8B8B8C),
      id: 3,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress4.png',
      title: 'Office Code',
      price: 533,
      color: const Color(0xFFABBEDE),
      id: 4,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress1.png',
      title: 'Office Code',
      price: 233,
      color: const Color(0xFFB5A387),
      id: 5,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress2.png',
      title: 'Office Code',
      price: 333,
      color: const Color(0xC7E1BC34),
      id: 6,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress3.png',
      title: 'Office Code',
      price: 433,
      color: const Color(0xFF8B8B8C),
      id: 7,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress4.png',
      title: 'Office Code',
      price: 533,
      color: const Color(0xFFABBEDE),
      id: 8,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress1.png',
      title: 'Office Code',
      price: 233,
      color: const Color(0xFFB5A387),
      id: 9,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress2.png',
      title: 'Office Code',
      price: 333,
      color: const Color(0xC7E1BC34),
      id: 10,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress3.png',
      title: 'Office Code',
      price: 433,
      color: const Color(0xFF8B8B8C),
      id: 11,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress4.png',
      title: 'Office Code',
      price: 533,
      color: const Color(0xFFABBEDE),
      id: 12,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress1.png',
      title: 'Office Code',
      price: 233,
      color: const Color(0xFFB5A387),
      id: 13,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress2.png',
      title: 'Office Code',
      price: 333,
      color: const Color(0xC7E1BC34),
      id: 14,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress3.png',
      title: 'Office Code',
      price: 433,
      color: const Color(0xFF8B8B8C),
      id: 15,
    ),
    ProductModel(
      image: 'assets/images/women_shop/dress4.png',
      title: 'Office Code',
      price: 533,
      color: const Color(0xFFABBEDE),
      id: 16,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomGridView(productModel: productModel);
  }
}
