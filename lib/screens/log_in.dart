import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music/screens/sign_up.dart';
import 'package:music/widgets/custom_widgets.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool _obscureText = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1E1E1E),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.sp,
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/images/1.png",
                    height: 50.sp,
                  )),
              SizedBox(
                height: 50.sp,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login to your Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
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
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.only(left: 10, bottom: 3),
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
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
                  obscureText: _obscureText,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 10, top: 10),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText == false
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 40.sp,
              ),
              Container(
                height: 40.sp,
                width: 270.sp,
                decoration: BoxDecoration(
                    color: Color(0xffFEB512),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Center(
                    child: Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Center(
                  child: Text(
                "or sign in with",
                style: TextStyle(color: Colors.white),
              )),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/Group 33354.svg"),
                  SizedBox(
                    width: 20.sp,
                  ),
                  SvgPicture.asset("assets/images/Group 2.svg"),
                  SizedBox(
                    width: 20.sp,
                  ),
                  SvgPicture.asset("assets/images/Vector.svg"),
                ],
              ),
              SizedBox(
                height: 125,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(SignUpScreen());
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign up',
                          style: TextStyle(
                              color: Color(0xffFEB512), fontSize: 15.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
