import 'package:flutter/material.dart';
import 'package:jokes/category/category.dart';
import 'package:jokes/slider.dart';
import 'mainScreen/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Laughzy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageSliderScreen(),
    );
  }
}