import 'package:flutter/material.dart';
import 'package:footinfo_app/core/model/card_item.dart';
import 'package:footinfo_app/widgets/card_image.dart';

class Players extends StatelessWidget {
  final List<CardImageItem> items;
  const Players(this.items);

  List<Widget> _buildCards() =>
      items.map((card) => CardImage(card.image, card.text)).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 150,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(top: 12, left: 12),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              'Players',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: _buildCards(),
          ))
        ],
      ),
    );
  }
}
