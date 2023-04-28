import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/screens/log_in.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
home: LoginScreen(),
    );
    },);
  }
}
