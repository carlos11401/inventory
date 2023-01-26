import 'package:flutter/material.dart';
import 'package:inventory/src/screens/login.dart';
import 'package:inventory/src/screens/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter View',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LoginPage.route,
      routes: {
        LoginPage.route : (context) => LoginPage(),
        SignUpPage.route : (context) => SignUpPage(),
        '/signUp': (context) => LoginPage(),
      }
    );
  }
}