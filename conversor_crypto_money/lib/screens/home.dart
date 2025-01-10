//TODO: CoinAPIq

import 'package:conversor_crypto_money/data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedCurrency = "DOP";

  DropdownButton<String> getAndroidDropdownButton() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String currency in currencyList) {
      var newItem = DropdownMenuItem(
        value: currency,
        child: Text(currency),
      );
      dropDownItems.add(newItem);
    }

    return DropdownButton(
        value: selectedCurrency,
        items: dropDownItems,
        onChanged: (value) {
          setState(() {
            selectedCurrency = value;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cripto Converter'),
          centerTitle: true,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(18, 18, 0, 0),
                  child: Card(
                      color: Colors.lightBlueAccent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Text(
                            '1 BTC = ? USD',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Container(
                height: 150,
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 30),
                color: Colors.lightBlue,
                child: getAndroidDropdownButton(),
              )
            ]));
  }
}
