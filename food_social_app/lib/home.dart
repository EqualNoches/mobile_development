import 'package:flutter/material.dart';
import 'package:food_social_app/models/tab_manager.dart';
import 'package:food_social_app/views/explore_screen.dart';
import 'package:food_social_app/views/recipes_screen.dart';
import 'package:food_social_app/views/tobuy_screen.dart';
import 'package:provider/provider.dart';
import 'components/theme_button.dart';

class Home extends StatefulWidget {
  Home({super.key, required this.appTitle, required this.changeThemeMode});
  final appTitle;
  final void Function(bool useLightMode) changeThemeMode;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentScreen = 0;
  List<Widget> screens = [ExploreScreen(), RecipesScreen(), TobuyScreen()];
  void changeScreen(int index) {
    setState(() {
      currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Food Social App'; // set the app title as a constant
    return Consumer<TabManager>(
      builder: (BuildContext context, tabManager, Widget? child) => Scaffold(
          appBar: AppBar(
            title: Text(
              appTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            centerTitle: true,
            actions: [ThemeButton(changeTheme: widget.changeThemeMode)],
          ),
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.black,
              onTap: (value) {
                changeScreen(value);
              },
              currentIndex: currentScreen,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore), label: 'EXPLORE'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.card_giftcard), label: 'RECIPES'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: 'to Buy'),
              ]),
          body: screens[tabManager.selectedTab]),
    );
  }
}
