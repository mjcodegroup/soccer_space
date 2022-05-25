import 'package:flutter/material.dart';
import 'package:footinfo_app/core/model/card_item.dart';
import 'package:footinfo_app/widgets/card_image.dart';

class PopularClubs extends StatelessWidget {
  final List<CardImageItem> items;
  const PopularClubs(this.items);

  List<Widget> _buildCards() => items
      .map(
        (card) => CardImage(card.image, card.text,
            format: CardImageType.second, textAlign: CrossAxisAlignment.start),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 12, top: 15),
        child: Container(
          height: 180,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: ListView(
            padding: EdgeInsets.only(right: 12),
            scrollDirection: Axis.horizontal,
            children: _buildCards(),
          ),
        ),
      ),
    );
  }
}
