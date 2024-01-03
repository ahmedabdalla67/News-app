import 'package:flutter/material.dart';
import 'package:news_app_updated/widget/list_view_article_builder.dart';

class CardView extends StatelessWidget {
  const CardView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ListViewArticleBuilder(category: category),
        ],
      ),
    );
  }
}
