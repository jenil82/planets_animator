import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/planets_controller.dart';

class Planets_Sc extends StatefulWidget {
  const Planets_Sc({Key? key}) : super(key: key);

  @override
  State<Planets_Sc> createState() => _Planets_ScState();
}

class _Planets_ScState extends State<Planets_Sc>
    with TickerProviderStateMixin {
  PlanetsController contoller = Get.put(PlanetsController());
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =
    AnimationController(vsync: this, duration: Duration(seconds: 15))
      ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("planent"),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: ScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                itemCount: contoller.ErthList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      contoller.E1.value = contoller.ErthList[index];
                      Get.toNamed("next");
                    },
                    child: Obx(
                          () => Container(
                        height: 26.h,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 19.w, top: 2.5.h),
                              child: Container(
                                height: 25.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  border:
                                  Border.all(color: Colors.lightBlueAccent, width: 5),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 20.h,
                                      width: 66.w,
                                      margin: EdgeInsets.only(left: 6.w),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.w, top: 4.h),
                                              child: Text(
                                                "${contoller.ErthList[index].name}",
                                                style: TextStyle(
                                                  fontSize: 30.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15.w, top: 2.5.h),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 2.h,
                                                    width: 2.h,
                                                    child: Image.asset(
                                                        "assets/images/ic_gravity.png"),
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  Text(
                                                    "${contoller.ErthList[index].distance} km",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10.sp),
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  Container(
                                                    height: 2.h,
                                                    width: 2.h,
                                                    child: Image.asset(
                                                        "assets/images/ic_distance.png"),
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  Text(
                                                    "${contoller.ErthList[index].gravity} m/s²",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10.sp),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.6.h, left: 3.w),
                              child: AnimatedBuilder(
                                animation: animationController!,
                                child: Container(
                                  height: 15.h,
                                  width: 15.h,
                                  child: Image.asset(
                                      "${contoller.ErthList[index].image}",
                                      fit: BoxFit.cover),
                                ),
                                builder: (context, child) {
                                  return Transform.rotate(
                                    angle: animationController!.value * 2 * pi,
                                    child: child,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}