import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intec_social_app/views/screens/auth/home_screen.dart';
import 'package:intec_social_app/views/screens/auth/login_screen.dart';
import 'package:intec_social_app/views/screens/auth/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Red Social',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: {
        '/register': (context) => RegisterPage(), // Ruta para el registro.
        '/home': (context) => HomePage(), // Ruta a la página principal.
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
