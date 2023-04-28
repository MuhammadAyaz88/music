import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LiveWatch extends StatefulWidget {
  @override
  State<LiveWatch> createState() => _LiveWatchState();
}

class _LiveWatchState extends State<LiveWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.sp, left: 20.sp),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.sp),
                  child: Column(
                    children: [
                      Text(
                        "David Bowie",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Text(
                        "Lorem ispum  20 Viewers ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80.sp,
                ),
                Icon(
                  Icons.playlist_add,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.sp,
                ),
                Icon(
                  Icons.close_rounded,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Padding(
            padding: EdgeInsets.only(right: 62.sp),
            child: Container(
              height: 50.sp,
              width: 200.sp,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.sp,
                  ),
                  CircleAvatar(
                    radius: 15.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.sp),
                    child: Column(
                      children: [
                        Text(
                          "Noshwan Ali",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.sp),
                              child: Text(
                                "Awesome, Love it!",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.sp),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.sp,
                  width: 200.sp,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.sp,
                      ),
                      CircleAvatar(
                        radius: 15.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.sp),
                        child: Column(
                          children: [
                            Text(
                              "Noshwan Ali",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20.sp),
                                  child: Text(
                                    "Awesome, Love it!",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.sp),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.share_sharp,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.sp,
              ),
              Container(
                height: 36.sp,
                width: 230.sp,
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
                      hintText: "Write a comments",
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 10, top: 7),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(top: 3),
                      )),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
