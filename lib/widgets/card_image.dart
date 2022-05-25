import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String image;
  final String text;
  final CardImageType format;
  final CrossAxisAlignment textAlign;

  const CardImage(this.image, this.text,
      {this.format = CardImageType.first,
      this.textAlign = CrossAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    final double imageHeight = handleImageHeight(format);

    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: textAlign,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(image, height: imageHeight),
            ),
          ),
          Text(
            text,
            style:
                TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

enum CardImageType {
  first,
  second,
}

double handleImageHeight(CardImageType type) {
  final banners = {
    CardImageType.first: 70.0,
    CardImageType.second: 140.0,
  };
  return banners[type] ?? 100;
}
