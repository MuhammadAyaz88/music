import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music/screens/live_watch.dart';

class OtherLayout extends StatefulWidget {
  @override
  State<OtherLayout> createState() => _OtherLayoutState();
}

class _OtherLayoutState extends State<OtherLayout> {


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
    return  Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      //   title: Text("OtherLayout",style: TextStyle(color: Colors.black),),
      // ),
     body:  Column(
       children: [
         SizedBox(height: 10.sp,),
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
           padding: EdgeInsets.only(left: 10.sp,top: 20.sp),
           child: Align(
               alignment: Alignment.topLeft,
               child: Text(
                 "Discover",
                 style: TextStyle(
                     color: Colors.white,
                     fontSize: 18.sp,
                     fontWeight: FontWeight.w500),
               )),
         ),
         Padding(
           padding: EdgeInsets.only(left: 10.sp,top: 5.sp),
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
         Row(
           children: [
             Container(
               height: 38.sp,
               width: 250.sp,
               decoration: BoxDecoration(
                 color: Colors.white,
                 border: Border.all(color: Colors.white),
                 borderRadius: BorderRadius.all(
                   Radius.circular(8),
                 ),
               ),
               child: TextFormField(
                 style: TextStyle(color: Colors.white),
                 decoration: InputDecoration(
                   fillColor: Colors.white,
                     border: InputBorder.none,
                     hintText: "Search",
                     hintStyle: TextStyle(color: Colors.black),
                     contentPadding: EdgeInsets.only(left: 10, top: 10),
                     suffixIcon: Padding(
                       padding: EdgeInsets.only(top: 3),
                       child: IconButton(
                         onPressed: () {
                           setState(() {
                           });
                         },
                         icon: Icon(
                           Icons.search,
                           color: Colors.black,
                         ),
                       ),
                     )),
               ),
             ),
             SizedBox(width: 10.sp,),
             GestureDetector(
                 onTap: (){
                 Get.to(LiveWatch());
                 },
                 child: Icon(Icons.beenhere_rounded,color: Colors.white,)),
           ],
         ),
         Padding(
           padding: EdgeInsets.only(left: 10.sp,top: 20.sp),
           child: Align(
               alignment: Alignment.topLeft,
               child: Text(
                 "Live Streams",
                 style: TextStyle(
                     color: Colors.white,
                     fontSize: 18.sp,
                     fontWeight: FontWeight.w500),
               )),
         ),
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
       ],
     ),
    );
  }
}
