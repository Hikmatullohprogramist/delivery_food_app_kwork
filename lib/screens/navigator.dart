import 'package:delivery_food_app/screens/history/history.dart';
import 'package:delivery_food_app/screens/home/home.dart';
import 'package:delivery_food_app/screens/hozirgiScreen/hozirgi.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigatorScreen extends StatefulWidget {
  const BottomNavigatorScreen({super.key});

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorScreenState();
}

class _BottomNavigatorScreenState extends State<BottomNavigatorScreen> {
  var currentIndex = 0;
  List<Widget> _pages = [
    HomeScreen(),
    HozirgiScreen(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          unselectedItemColor: Color(0xFF534341),
          items: [
            SalomonBottomBarItem(
              icon: Badge(
                child: Icon(Icons.home),
                label: Text("32"),
              ),
              title: Text(
                "Новые",
              ),
            ),
            SalomonBottomBarItem(
              icon: Badge(
                  label: Text("3"), child: Icon(Icons.shopping_bag_outlined)),
              title: Text(
                "Текущие",
              ),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.history),
              title: Text(
                "История",
              ),
            ),
          ]),
    );
  }
}
