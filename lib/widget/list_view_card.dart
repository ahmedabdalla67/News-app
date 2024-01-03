import 'package:flutter/material.dart';
import 'package:news_app_updated/models/card_model.dart';
import 'package:news_app_updated/widget/card_widget.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({super.key});
  final List<CardModel> cards = const [
    CardModel(image: 'assets/business.jpg', subject: 'Business'),
    CardModel(image: 'assets/entertaiment.avif', subject: 'Entertainment'),
    CardModel(image: 'assets/general.jpg', subject: 'General'),
    CardModel(image: 'assets/health.avif', subject: 'Health'),
    CardModel(image: 'assets/science.avif', subject: 'Science'),
    CardModel(image: 'assets/sports.jpg', subject: 'Sports'),
    CardModel(image: 'assets/technology.jpeg', subject: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemBuilder: (context, index) => CardWidget(cardModel: cards[index]),
        itemCount: cards.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
