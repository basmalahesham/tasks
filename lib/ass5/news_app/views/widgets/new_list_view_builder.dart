import 'package:flutter/material.dart';
import 'package:optical/ass5/news_app/models/article_model.dart';
import 'package:optical/ass5/news_app/services/news_service.dart';
import 'package:optical/ass5/news_app/views/widgets/categories_list_view.dart';

class NewListViewBuilder extends StatefulWidget {
  const NewListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CategoriesListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Text('oops there was an error, try later'),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
