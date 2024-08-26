import 'package:dio/dio.dart';
import 'package:optical/ass5/news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=fa8b144e12144c6d9ebdb47010053bf5&category=$category');
      Map<String, dynamic> data = response.data;
      List<dynamic> articles = data['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
