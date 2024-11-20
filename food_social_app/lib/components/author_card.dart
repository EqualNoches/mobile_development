import 'package:flutter/material.dart';
import 'package:food_social_app/food_theme.dart';
import 'package:food_social_app/main.dart';

import 'circle_image.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({super.key, required this.authorName, this.title, this.imageProvider});

  final String authorName;
  final title;
  final ImageProvider? imageProvider;

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {

  bool _isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                radius: 28,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.authorName, style: FoodTheme.lightTextTheme.bodyLarge,),
                  Text(
                    widget.title,
                    style: FoodTheme.lightTextTheme.bodyLarge,
                  )
                ],
              ),
            ],
          ),
          IconButton(
            iconSize: 30,
              color: Colors.red,
              onPressed: () {
              setState(() {
                _isfavorite = !_isfavorite;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('Favorite Pressed'),
                  )
              );
              },
              icon: Icon(_isfavorite ? Icons.favorite : Icons.favorite_border)
          )
        ],
      ),
    );
  }
}
