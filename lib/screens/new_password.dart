import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music/screens/onboarding.dart';

class NewPassword extends StatefulWidget {

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool hide = false;
  bool hiden = false;

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
                  "New Password",
                  style: TextStyle(fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)
              ),

              SizedBox(height: 30.sp,),
              Column(
                children: [
                  Text(
                      "Your new password must be different from",
                      style: TextStyle(fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)
                  ),
                  Text(
                      "previous uses password",
                      style: TextStyle(fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)
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
                  obscureText: hiden,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "New Password",
                      hintStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 10, top: 10),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              hiden = !hiden;
                            });
                          },
                          icon: Icon(
                            hiden == false
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(height: 20.sp,),
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
                  obscureText: hide,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Conform Password",
                      hintStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 10, top: 10),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              hide = !hide;
                            });
                          },
                          icon: Icon(
                            hide == false
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(height: 40.sp,),
              GestureDetector(
                onTap: () {
                  Get.to(OnboardingScreen());
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
