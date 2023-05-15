import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/planets_controller.dart';

class Planets_Screen extends StatefulWidget {
  const Planets_Screen({Key? key}) : super(key: key);

  @override
  State<Planets_Screen> createState() => _Planets_ScreenState();
}

class _Planets_ScreenState extends State<Planets_Screen> with TickerProviderStateMixin {
  PlanetsController Controller = Get.put(PlanetsController());
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =
    AnimationController(vsync: this, duration: Duration(seconds: 40))
      ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    child: Container(
                      // border: Border.all(color: Colors.blueAccent),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      // color: Color(0XFF3E3963),
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15.h, left: 7.5.w),
                            child: Text(
                              "VIEW",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 25.h,
                            width: 85.w,
                            margin: EdgeInsets.only(top: 1.h, left: 7.w),
                            // color: Colors.red,
                            child: Text(
                              "${Controller.E1.value.overview}",
                              style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Center(
              child: Container(
                height: 30.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 15,
                          offset: Offset(0, 0))
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 9.h),
                      child: Text(
                        "${Controller.E1.value.name}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 0.3.h,
                      width: 12.w,
                      margin: EdgeInsets.only(top: 1.h),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.5.h, left: 15.w),
                      child: Row(
                        children: [
                          Container(
                              height: 3.h,
                              width: 3.h,
                              child:
                              Image.asset("assets/images/ic_distance.png")),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            "${Controller.E1.value.distance} km",
                            style:
                            TextStyle(color: Colors.grey, fontSize: 10.sp),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                              height: 3.h,
                              width: 3.h,
                              child:
                              Image.asset("assets/images/ic_gravity.png")),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            "${Controller.E1.value.gravity} m/s²",
                            style:
                            TextStyle(color: Colors.grey, fontSize: 10.sp),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}