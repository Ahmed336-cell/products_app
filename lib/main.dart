import 'package:flutter/material.dart';
import 'api_service.dart';
import 'products_model.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blueGrey
      ),
      home: MyHomePage(),
    );
  }
}

