import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
 int selectedIndex = 0;
 int selected = 0;
  int initialValue = 0;
  List Images = [
    Column(
      children: [
        Image.asset(
          "assets/images/11.png",
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 10.sp,
        ),
        // Text(
        //   "Welcome to LAULUHUONE",
        //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        // ),
        // SizedBox(
        //   height: 20.sp,
        // ),
        // Column(
        //   children: [
        //     Text(
        //       "Now you can enjoy music videos and",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     Text(
        //       "audios on a single app.",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ],
        // ),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/images/11.png", fit: BoxFit.fill),
        SizedBox(
          height: 10.sp,
        ),
        // Text("Watch Videos",
        //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        // SizedBox(
        //   height: 20.sp,
        // ),
        // Column(
        //   children: [
        //     Text(
        //       "Now you can enjoy music videos and",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     Text(
        //       "audios on a single app.",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ],
        // ),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/images/11.png", fit: BoxFit.fill),
        SizedBox(
          height: 10.sp,
        ),
        // Text("Join Live Events",
        //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        // SizedBox(
        //   height: 20.sp,
        // ),
        // Column(
        //   children: [
        //     Text(
        //       "Now you can enjoy music videos and",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     Text(
        //       "audios on a single app.",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ],
        // ),
      ],
    ),
  ];
  List audioImages = [
    Column(
      children: [
        Image.asset(
          "assets/images/11.png",
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 10.sp,
        ),
        Column(
          children: [
            Text(
              "Name of the",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Album",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ),
    Column(
      children: [
        Image.asset("assets/images/11.png", fit: BoxFit.fill),
        SizedBox(
          height: 10.sp,
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
        Image.asset("assets/images/11.png", fit: BoxFit.fill),
        SizedBox(
          height: 10.sp,
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
  List videoImages = [
    Column(
      children: [
        Image.asset(
          "assets/images/11.png",
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 10.sp,
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
        Image.asset("assets/images/11.png", fit: BoxFit.fill),
        SizedBox(
          height: 10.sp,
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
        Image.asset("assets/images/11.png", fit: BoxFit.fill),
        SizedBox(
          height: 10.sp,
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
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      //   title: Text("HomeLayout",style: TextStyle(color: Colors.black),),
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 20.sp,
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 20.sp,
                      ),),

                ],
              ),),
          SizedBox(height: 10.sp,),
          Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("Live concent",style: TextStyle(color: Colors.white),),
                 Text("See All",style: TextStyle(color: Colors.white),),
                ],
              ),
          ),
          SizedBox(height: 20.sp,),
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
          SizedBox(height: 20.sp,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Audio",style: TextStyle(color: Colors.white),),
              Text("See All",style: TextStyle(color: Colors.white),),
            ],
          ),
          Expanded(
            child: PageView.builder(
              onPageChanged: (value){
                setState(() {
                  selectedIndex = value;
                });
              },
              itemCount: audioImages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: audioImages[index],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Videos",style: TextStyle(color: Colors.white),),
              Text("See All",style: TextStyle(color: Colors.white),),
            ],
          ),
          Expanded(
            child: PageView.builder(
              onPageChanged: (value){
                setState(() {
                  selected = value;
                });
              },
              itemCount: videoImages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: videoImages[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
