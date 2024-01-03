import 'package:flutter/material.dart';
import 'package:news_app_updated/models/article_model.dart';
import 'package:news_app_updated/views/web_view.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebContentView(
                url: articleModel.url,
              ),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: articleModel.image == null
                  ? const Icon(Icons.error)
                  : Image.network(
                      articleModel.image!,
                      height: 200,
                      width: double.infinity,
                    ),
            ),
            Column(
              children: [
                Text(
                  articleModel.title,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  articleModel.subTitle ?? '',
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
