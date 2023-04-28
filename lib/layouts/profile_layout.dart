import 'package:flutter/material.dart';

class ProfileLayout extends StatefulWidget {

  @override
  State<ProfileLayout> createState() => _ProfileLayoutState();
}

class _ProfileLayoutState extends State<ProfileLayout> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("ProfileLayout",style: TextStyle(color: Colors.black),),
      ),
    );;
  }
}
