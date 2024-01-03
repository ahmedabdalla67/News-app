import 'package:flutter/material.dart';
import 'package:news_app_updated/models/article_model.dart';
import 'package:news_app_updated/services/news_services.dart';
import 'package:news_app_updated/widget/list_view_article.dart';

class ListViewArticleBuilder extends StatefulWidget {
  const ListViewArticleBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<ListViewArticleBuilder> createState() => _ListViewArticleBuilderState();
}

class _ListViewArticleBuilderState extends State<ListViewArticleBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListViewArticle(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const Text("oops there is an error");
          } else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: CircularProgressIndicator(),
    //       )
    //     : ListViewArticle(articles: articles);
  }
}
