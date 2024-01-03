import 'package:dio/dio.dart';
import 'package:news_app_updated/models/article_model.dart';

class NewsServices {
  Future<List<ArticleModel>> getNews({required String category}) async {
    Dio dio = Dio();
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=b706d07ba32446608f04dd9960055106&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
