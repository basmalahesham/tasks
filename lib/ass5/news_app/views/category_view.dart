import 'package:flutter/material.dart';
import 'package:optical/ass5/news_app/views/widgets/new_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            NewListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
