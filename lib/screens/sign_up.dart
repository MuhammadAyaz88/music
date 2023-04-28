import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music/screens/forget_password.dart';

import '../widgets/custom_widgets.dart';



// yaml//
// dependencies:
// flutter:
// sdk: flutter
// flutter_svg: ^0.22.0
// smooth_page_indicator: ^0.2.0




// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         children: [
//           // Add your onboarding pages here
//         ],
//       ),
//     );
//   }
// }



// PageView(
// children: [
// OnboardingPage(
// title: 'Welcome to My App',
// subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
// image: 'assets/images/onboarding_1.svg',
// ),
// OnboardingPage(
// title: 'Explore Our Features',
// subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
// image: 'assets/images/onboarding_2.svg',
// ),
// OnboardingPage(
// title: 'Get Started',
// subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
// image: 'assets/images/onboarding_3.svg',
// ),
// ],
// )



// class OnboardingPage extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String image;
//
//   const OnboardingPage({
//     Key? key,
//     required this.title,
//     required this.subtitle,
//     required this.image,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SvgPicture.asset(
//           image,
//           height: 200,
//           width: 200,
//         ),
//         SizedBox(height: 32),
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 16),
//         Text(
//           subtitle,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 16,
//           ),
//         ),
//       ],
//     );
//   }
// }


// SmoothPageIndicator(
// controller: _pageController,
// count: 3,
// effect: WormEffect(
// dotColor: Colors.grey,
// activeDotColor: Colors.blue,
// dotWidth: 10,
// dotHeight: 10,
// ),
// ),



// ElevatedButton(
// onPressed: () {
// Navigator.pushReplacement(
// context,
// MaterialPageRoute(builder: (context) => HomeScreen()),
// );
// },
// child: Text('Get Started'),
// ),






class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool hide = false;
  bool hiden = false;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1E1E1E),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 70.sp,),
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/images/1.png",
                    height: 50.sp,
                  )),
              SizedBox(height: 50.sp,),
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
              SizedBox(height: 15.sp,),
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
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 10, top: 10),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              hide =! hide;
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

              SizedBox(height: 15.sp,),
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
                      hintText: "Confirm Password",
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
              SizedBox(height: 40.sp,),
              Container(height: 40.sp,width: 270.sp,
                decoration: BoxDecoration(
                    color:Color(0xffFEB512),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Center(child: Text("Log in",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.white),)),
              ),
              SizedBox(height: 20.sp,),
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
              SizedBox(height: 60.sp,),
              GestureDetector(
                onTap: () {
                  Get.to(ForgetPassword());
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign In',
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
