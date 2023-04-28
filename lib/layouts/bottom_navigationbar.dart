import 'package:flutter/material.dart';
import 'package:music/layouts/favourite_layout.dart';
import 'package:music/layouts/home_layout.dart';
import 'package:music/layouts/other_layout.dart';
import 'package:music/layouts/profile_layout.dart';

class BottomNavigationbar extends StatefulWidget {
  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int initialValue = 0;
  List screens = [
    HomeLayout(),
    FavouriteLayout(),
    OtherLayout(),
    ProfileLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[initialValue],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: initialValue,
        onTap: (val) {
          setState(() {
            initialValue = val;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.stream), label: "Live stream"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
