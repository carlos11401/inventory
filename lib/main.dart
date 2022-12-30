import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold useses"),
        elevation: 5,
        shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(50, 10))),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.apple)),
          IconButton(onPressed: (){}, icon: Icon(Icons.android))
        ],
      ),
      body: Center(),
      backgroundColor: Colors.white,
    );
  }
}
