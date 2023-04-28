import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music/screens/mimbership.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int initialValue = 0;

  List Images = [
    Column(
      children: [
        Image.asset(
          "assets/images/7.png",
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 10.sp,
        ),
        Text(
          "Welcome to LAULUHUONE",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20.sp,
        ),
        Column(
          children: [
            Text(
              "Now you can enjoy music videos and",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "audios on a single app.",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/images/8.png", fit: BoxFit.fill),
        SizedBox(
          height: 10.sp,
        ),
        Text("Watch Videos",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        SizedBox(
          height: 20.sp,
        ),
        Column(
          children: [
            Text(
              "Now you can enjoy music videos and",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "audios on a single app.",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/images/9.png", fit: BoxFit.fill),
        SizedBox(
          height: 10.sp,
        ),
        Text("Join Live Events",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        SizedBox(
          height: 20.sp,
        ),
        Column(
          children: [
            Text(
              "Now you can enjoy music videos and",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "audios on a single app.",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
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
            Expanded(
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                  initialValue = value;
                  });
                },
                itemCount: Images.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Images[index],
                  );
                },
              ),
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: initialValue==0?Color(0xfffdaf06):Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 5.sp,),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: initialValue==1?Color(0xffFEB512):Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 5.sp,),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: initialValue==2?Color(0xffFEB512):Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(bottom: 20.sp, left: 18.sp, right: 20.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
Get.to(MimbershipScreen());
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.white, fontSize: 15.sp),
                      )),
                  Container(
                    height: 25.sp,
                    width: 50.sp,
                    decoration: BoxDecoration(
                        color: Color(0xffFEB512),
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        )),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                        // initialValue:Images.length++;
                        });
                      },
                      child: Center(
                          child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),

            // initialValue==Images.length-1?Container(
            //   height: 40,
            //   width: 50,
            //   color: Colors.red,
            // ):SizedBox(),
          ],
        ),
      ),
    );
  }
}
