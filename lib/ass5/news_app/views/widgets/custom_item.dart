import 'package:flutter/material.dart';
import 'package:optical/ass5/news_app/models/category_model.dart';
import 'package:optical/ass5/news_app/views/category_view.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return CategoryView(
                    category: categoryModel.categoryName,
                  );
                },
              ),
            );          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16,
              right: 16,
            ),
            child: CircleAvatar(
              radius: 28, // Image radius
              backgroundImage: AssetImage(categoryModel.image),
            ),
          ),
        ),
        Text(
          categoryModel.categoryName,
          style: const TextStyle(fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
