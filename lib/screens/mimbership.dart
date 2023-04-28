import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music/screens/payment.dart';

class MimbershipScreen extends StatefulWidget {
  @override
  State<MimbershipScreen> createState() => _MimbershipScreenState();
}

class _MimbershipScreenState extends State<MimbershipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                left: 10.sp,
                right: 10.sp,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mimbership",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ))
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.sp),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Expiring",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.sp),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Select a membership option",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.sp),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "7 days free trail for you.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Container(
                height: 210.sp,
                width: 270.sp,
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child:
                              Image.asset("assets/images/10.png", scale: 1.2)),
                      title: Text(
                        "Gold",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Membership",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 60.sp,
                      ),
                      child: Container(
                        height: 20.sp,
                        width: 100.sp,
                        child: Center(
                            child: Text(
                          "Lorem ipsum dolor",
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.sp),
                        )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffFEB512)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp, top: 20.sp),
                      child: Text(
                        "Description & Price",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp, top: 5.sp),
                      child: Text(
                        "More Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 20.sp,
                      endIndent: 20.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp, top: 5.sp),
                      child: Text(
                        "\$34,89",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20.sp,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: (){
                            Get.to(PaymeentScreen());
                          },
                          child: Container(
                            height: 25.sp,
                            width: 100.sp,
                            child: Center(
                                child: Text(
                              "Lorem ipsum",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12.sp),
                            )),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffFEB512)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.sp,
                      ),
                      child: Text(
                        "\$39,99",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 10.sp,
            ),
            Container(
                height: 210.sp,
                width: 270.sp,
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffFEB512)),
                          child:
                              Image.asset("assets/images/10.png", scale: 1.2)),
                      title: Text(
                        "Platinum",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Membership",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 60.sp,
                      ),
                      child: Container(
                        height: 20.sp,
                        width: 100.sp,
                        child: Center(
                            child: Text(
                          "Lorem ipsum dolor",
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.sp),
                        )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffFEB512)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp, top: 20.sp),
                      child: Text(
                        "Description & Price",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp, top: 5.sp),
                      child: Text(
                        "More Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 20.sp,
                      endIndent: 20.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp, top: 5.sp),
                      child: Text(
                        "\$34,89",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20.sp,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: (){
                            Get.to(PaymeentScreen());
                          },
                          child: Container(
                            height: 25.sp,
                            width: 100.sp,
                            child: Center(
                                child: Text(
                              "Lorem ipsum",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12.sp),
                            )),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffFEB512)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.sp,
                      ),
                      child: Text(
                        "\$39,99",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
