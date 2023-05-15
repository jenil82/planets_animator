import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planets_animator/screen/home/view/planets_2.dart';
import 'package:planets_animator/screen/home/view/planets_view.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
Sizer(
        builder: (context, orientation, deviceType) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          routes: {
            '/': (context) => Planets_Sc(),
            'next': (context) => Planets_Screen(),
          },
        ),
      ),
  
  );
}