import 'package:flutter/material.dart';
import 'package:news_app_updated/models/card_model.dart';
import 'package:news_app_updated/views/card_view.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.cardModel});

  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 25),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CardView(
                category: cardModel.subject,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(cardModel.image),
              fit: BoxFit.cover,
            ),
          ),
          height: 150,
          width: 200,
          child: Center(
            child: Text(
              cardModel.subject,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
