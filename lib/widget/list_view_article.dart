import 'package:flutter/material.dart';
import 'package:news_app_updated/models/article_model.dart';
import 'package:news_app_updated/widget/article_widget.dart';

class ListViewArticle extends StatelessWidget {
  const ListViewArticle({super.key, required this.articles});
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            (context, index) => ArticleWidget(
                  articleModel: articles[index],
                ),
            childCount: articles.length));
  }
}
