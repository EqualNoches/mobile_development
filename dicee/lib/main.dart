import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() => runApp(Dicee());

class Dicee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      home: GradientContainer(
          Color.fromARGB(255, 33, 5, 109), Color.fromARGB(255, 68, 21, 149)),
    );
  }
}
