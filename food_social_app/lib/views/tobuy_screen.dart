import 'package:flutter/material.dart';
import 'package:food_social_app/components/card3.dart';
import 'package:food_social_app/models/grocery_manager.dart';
import 'package:food_social_app/views/empty_grocery_screen.dart';
import 'package:provider/provider.dart';

class TobuyScreen extends StatelessWidget {
  const TobuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
      body: buildGroceryScreen(),
    );
  }

  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(builder: (context, manager, child) {
      if (manager.GroceryItem.isNotEmpty) {
        return Container();
      } else {
        return EmptyGroceryScreen();
      }
    });
  }
}
