import 'package:flutter/material.dart';
import 'package:food_social_app/models/grocery_item.dart';

class GroceryManager extends ChangeNotifier {

  final _groceryItems = <GroceryItem>[];


 List<GroceryItem> get groceryItem => List.unmodifiable(_groceryItems);
  //
  void addItem(GroceryItem item) {
     _groceryItems.add(item);
     notifyListeners();
   }


  void deleteItem(int index) {
    _groceryItems.remove(index);
    notifyListeners();
  }

  void updateItem(GroceryItem item, int index) {
    _groceryItems[index]= item;
    notifyListeners();
  }

  void completeItem(int index, bool change) {}
}
