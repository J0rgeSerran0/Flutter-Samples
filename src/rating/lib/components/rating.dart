import 'package:flutter/material.dart';

typedef RatingTapCallback = void Function(int rating);

class StarRating extends StatelessWidget {
  const StarRating(
      {this.lenght = 1,
      this.rating = 0,
      this.spacing = 0,
      this.starSize = 20,
      this.colorEmpty = Colors.grey,
      this.colorFull = Colors.amber,
      this.onRaitingTap,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.iconEmpty = Icons.star_border,
      this.iconFull = Icons.star_rate});

  final int lenght;
  final int rating;
  final int spacing;
  final int starSize;
  final RatingTapCallback? onRaitingTap;
  final Color colorEmpty;
  final Color colorFull;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final IconData iconEmpty;
  final IconData iconFull;

  @override
  Widget build(BuildContext context) {
    final SizedBox space = SizedBox(width: spacing.toDouble());

    final empty = Icon(iconEmpty, color: colorEmpty, size: starSize.toDouble());
    final full = Icon(iconFull, color: colorFull, size: starSize.toDouble());

    Icon ratingSelection(int index) => (rating >= index + 1) ? full : empty;

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: <Widget>[
        for (int i = 0; i < lenght; i++) ...[
          if (i > 0) space,
          GestureDetector(
            onTap: () {
              if (rating == (i + 1)) {
                onRaitingTap?.call((0).toInt());
              } else {
                onRaitingTap?.call((i + 1).toInt());
              }
            },
            child: ratingSelection(i),
          ),
        ]
      ],
    );
  }
}
