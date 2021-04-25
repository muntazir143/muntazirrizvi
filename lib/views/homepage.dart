import 'package:flutter/material.dart';
import 'package:muntazirrizvi/views/about.dart';
import 'package:muntazirrizvi/views/projects.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> tabs = [
    About(),
    Projects(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.wb_sunny),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Projects"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
      body: Center(
        child: tabs.elementAt(_selectedIndex),
      ),
    );
  }
}
