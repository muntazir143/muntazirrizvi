import 'package:flutter/material.dart';
import 'package:muntazirrizvi/views/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muntazir Rizvi',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
