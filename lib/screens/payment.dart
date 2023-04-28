import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music/layouts/bottom_navigationbar.dart';

class PaymeentScreen extends StatefulWidget {
  @override
  State<PaymeentScreen> createState() => _PaymeentScreenState();
}

class _PaymeentScreenState extends State<PaymeentScreen> {
  bool ischicked = false;
  int initialValue = 0;
  List Images = [
    Image.asset("assets/images/11.png"),
    Image.asset("assets/images/11.png"),
    Image.asset("assets/images/11.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 20.sp,),
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
              top: 10.sp,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ]),
          ),
          Expanded(
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  initialValue = value;
                });
              },
              itemCount: Images.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Images[index],
                  horizontalTitleGap: 20,
                );
              },
            ),
          ),
          Center(child: Text(
            "Cridet Card", style: TextStyle(color: Colors.white),)),
          Text("Name", style: TextStyle(color: Colors.white),),
          Container(
            height: 35.sp,
            width: 270.sp,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                // hintText: "Enter Your E-mail",
                // hintStyle: TextStyle(color: Colors.white),
                // contentPadding: EdgeInsets.only(left: 10, top: 10),
                // prefixIcon: Icon(
                //   Icons.mail,
                //   color: Color(0xffFEB512),
                // ),
              ),
            ),
          ),
          Text("Card Number", style: TextStyle(color: Colors.white),),
          Container(
            height: 35.sp,
            width: 270.sp,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                // hintText: "Enter Your E-mail",
                // hintStyle: TextStyle(color: Colors.white),
                // contentPadding: EdgeInsets.only(left: 10, top: 10),
                // prefixIcon: Icon(
                //   Icons.mail,
                //   color: Color(0xffFEB512),
                // ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Issued Date", style: TextStyle(color: Colors.white),),

                Text("Expires", style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35.sp,
                  width: 100.sp,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      // hintText: "Enter Your E-mail",
                      // hintStyle: TextStyle(color: Colors.white),
                      // contentPadding: EdgeInsets.only(left: 10, top: 10),
                      // prefixIcon: Icon(
                      //   Icons.mail,
                      //   color: Color(0xffFEB512),
                      // ),
                    ),
                  ),
                ),
                Container(
                  height: 35.sp,
                  width: 100.sp,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      // hintText: "Enter Your E-mail",
                      // hintStyle: TextStyle(color: Colors.white),
                      // contentPadding: EdgeInsets.only(left: 10, top: 10),
                      // prefixIcon: Icon(
                      //   Icons.mail,
                      //   color: Color(0xffFEB512),
                      // ),
                    ),
                  ),
                ),
              ],),
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: Colors.red,
                  focusColor: Color(0xffFEB512),
                  checkColor: Color(0xffFEB512),
                  value: ischicked,
                  onChanged: (val) {
                    setState(() {
                      ischicked != val;
                    });
                  }
              ),
              Text("Securely save details",
                style: TextStyle(color: Colors.white),),
            ],
          ),
          GestureDetector(
            onTap: () {
              Get.defaultDialog(
                title: "Payment Successful",
                middleText: "Your payment has been recieved successfully",
                content: GestureDetector(
                  onTap: () {
                    Get.to(BottomNavigationbar());
                  },
                  child: Container(
                    height: 40.sp,
                    width: 170.sp,
                    decoration: BoxDecoration(
                        color: Color(0xffFEB512),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                        child: Text(
                          "Continue Shopping",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )),
                  ),
                ),
              );
            },
            child: Container(
              height: 40.sp,
              width: 270.sp,
              decoration: BoxDecoration(
                  color: Color(0xffFEB512),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                  child: Text(
                    "Pay Now",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
            ),
          ),
        ],),
    );
  }
}
