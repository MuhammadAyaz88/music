import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import 'new_password.dart';

class ForgetPassword extends StatefulWidget {
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}
class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.sp,
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
              SizedBox(height: 30.sp,),
              Text(
                "Forget Password",
                  style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.white)
              ),
              SizedBox(height: 50.sp,),
              Image.asset("assets/images/6.png",height: 60.sp,),
              SizedBox(height: 20.sp,),
              Text(
                "Forget Password",
                  style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.white)
              ),
              SizedBox(height: 20.sp,),
              Column(
                children: [
                  Text(
                    "Please enter valid E-mail address Which is",
                      style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.white)
                  ),
                  SizedBox(height: 1.sp,),
                  Text(
                    "linkup with your account and tap confirm",
                      style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.white)
                  ),
                  SizedBox(height: 1.sp,),
                  Text(
                    "button to continue",
                      style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.white)
                  ),
                ],
              ),
              SizedBox(height: 30.sp,),
              Container(
                height: 38.sp,
                width: 270.sp,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Your E-mail",
                      hintStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 10, top: 10),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Color(0xffFEB512),
                      )),
                ),
              ),
              SizedBox(height: 25.sp,),
              // SvgPicture.asset("assets/images/6.svg",),
              GestureDetector(
                onTap: (){
                  Get.to(NewPassword());
                },
                child: Container(
                  height: 40.sp,
                  width: 270.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffFEB512),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Center(
                      child: Text(
                    "Send Confirmation",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
