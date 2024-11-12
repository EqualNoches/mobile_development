import 'package:flutter/material.dart';

import 'components/theme_button.dart';

class Home extends StatefulWidget {
  Home({super.key, required this.appTitle, required this.changeThemeMode});
  final appTitle;
  final void Function(bool useLightMode) changeThemeMode;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Food Social App'; // set the app title as a constant
    return  Scaffold(
      appBar: AppBar(
        title: Text(appTitle,style: Theme.of(context).textTheme.titleLarge,),
        centerTitle: true,
        actions: [
          ThemeButton(changeTheme: widget.changeThemeMode)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'EXPLORE'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'EXPLORE'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'EXPLORE'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'GIFTCARD'
          ),
        ]
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );

  }
}
