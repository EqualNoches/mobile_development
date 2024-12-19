import 'package:flutter/material.dart';
import 'package:food_social_app/food_theme.dart';
import '../models/explore_recipes.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key, required this.recipe});

  final ExploreRecipe recipe;

  List<Widget> createTagChips() {
    final chips = <Widget>[];
    recipe.tags.take(6).forEach((element) {
      final chip = Chip(
          label: Text(element, style: FoodTheme.darkTextTheme.bodyLarge),
          backgroundColor: Colors.black.withOpacity(0.7));
      chips.add(chip);
    });
    return chips;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/magazine_pics/card_carrot.png")),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                // add pading
                children: [
                  Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 39,
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    "Save Post",
                    style: FoodTheme.darkTextTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                runSpacing: 12,
                children: createTagChips(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
