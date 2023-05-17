import 'package:flutter/material.dart';
import 'package:mealapp/1.1%20dummy_data.dart';
import 'package:mealapp/screens/firstscreen.dart';

import 'models/meal.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {






  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.deepPurple,
        canvasColor: Color.fromRGBO(255, 254, 200, 1),
      ),
      home: TabScreen(),
    );
  }
}
