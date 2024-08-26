import 'package:flutter/material.dart';
import 'package:optical/ass5/news_app/models/article_model.dart';
import 'package:optical/ass5/news_app/views/widgets/custom_list_tile.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, required this.articles});

  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Padding(
          padding: const EdgeInsets.only(
            bottom: 22.0,
          ),
          child: CustomListTile(
            articleModel: articles[index],
          ),
        ),
      ),
    );
  }
}
