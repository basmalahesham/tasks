import 'package:flutter/material.dart';
import 'package:optical/ass5/news_app/models/category_model.dart';
import 'package:optical/ass5/news_app/views/widgets/custom_item.dart';

class CustomListView extends StatelessWidget {
  CustomListView({
    super.key,
  });

  final List<CategoryModel> categories = [
    CategoryModel(
        image: 'assets/images/news/general.avif', categoryName: 'general'),
    CategoryModel(
        image: 'assets/images/news/business.avif', categoryName: 'business'),
    CategoryModel(
        image: 'assets/images/news/entertaiment.avif',
        categoryName: 'entertainment'),
    CategoryModel(
        image: 'assets/images/news/health.avif', categoryName: 'health'),
    CategoryModel(
        image: 'assets/images/news/science.avif', categoryName: 'science'),
    CategoryModel(
        image: 'assets/images/news/sports.avif', categoryName: 'sports'),
    CategoryModel(
        image: 'assets/images/news/technology.jpeg',
        categoryName: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CustomItem(
          categoryModel: categories[index],
        ),
      ),
    );
  }
}
