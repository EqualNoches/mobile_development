import 'package:flutter/material.dart';
import 'package:food_social_app/models/tab_manager.dart';
import 'package:provider/provider.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Image.asset('assets/empty_list.png'),
        ),
        Text(
          'No Groceries',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(height: 16),
        Text('Shopping for Ingridients?\nTap The + button to Write them down',
            textAlign: TextAlign.center),
        MaterialButton(
          onPressed: () {
            Provider.of<TabManager>(context, listen: false).goToRecipes();
          },
          color: Colors.green,
          textColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Text('Browse Recipes'),
        )
      ],
    );
  }
}
