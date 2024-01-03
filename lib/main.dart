import 'package:flutter/material.dart';
import 'package:news_app_updated/views/home_view.dart';

void main() {
  runApp(const NewsAppUpdated());
}

class NewsAppUpdated extends StatelessWidget {
  const NewsAppUpdated({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
