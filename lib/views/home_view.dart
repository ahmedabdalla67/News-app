import 'package:flutter/material.dart';
import 'package:news_app_updated/widget/list_view_article_builder.dart';

import 'package:news_app_updated/widget/list_view_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListViewCard(),
            ),
            ListViewArticleBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
