import 'package:flutter/material.dart';

class FavouriteLayout extends StatefulWidget {

  @override
  State<FavouriteLayout> createState() => _FavouriteLayoutState();
}

class _FavouriteLayoutState extends State<FavouriteLayout> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("FavouriteLayout",style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
