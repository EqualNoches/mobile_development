import 'package:flutter/material.dart';
import 'package:food_social_app/food_theme.dart';

import '../models/explore_recipes.dart';

class Card1 extends StatelessWidget {
  Card1({super.key, required this.recipes});

  final ExploreRecipes recipes;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 350, height: 350),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/magazine_pics/mag1.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Text(recipes.subtitle, style: FoodTheme.darkTextTheme.bodyLarge),
            Positioned(
              top: 20,
              child: Text(
                recipes.title,
                style: FoodTheme.darkTextTheme.titleLarge,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                recipes.description,
                style: FoodTheme.darkTextTheme.bodyLarge,
              ),
            ),
            Positioned(
                bottom: 10,
                right: 0,
                child: Text(
                  recipes.authorName,
                  style: FoodTheme.darkTextTheme.bodyLarge,
                )),
          ],
        ),
      ),
    );
  }
}
