import 'package:flutter/material.dart';
import 'package:food_social_app/food_theme.dart';

import '../models/explore_recipes.dart';

class Card1 extends StatelessWidget {
  Card1({super.key, required this.recipe});

  final ExploreRecipe recipe;

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
            Text(recipe.subtitle, style: FoodTheme.darkTextTheme.bodyLarge),
            Positioned(
              top: 20,
              child: Text(
                recipe.title,
                style: FoodTheme.darkTextTheme.titleLarge,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                recipe.description,
                style: FoodTheme.darkTextTheme.bodyLarge,
              ),
            ),
            Positioned(
                bottom: 10,
                right: 0,
                child: Text(
                  recipe.authorName,
                  style: FoodTheme.darkTextTheme.bodyLarge,
                )),
          ],
        ),
      ),
    );
  }
}
