import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/page/selectRole.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Get.offAll(SelectRole());
    });
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            SizedBox(
                height: 100.h,
                width: 100.w,
                child: Image.asset(
                  "assets/images/splash.png",
                  fit: BoxFit.fill,
                )),
            Column(children: [
              Spacer(
                flex: 3,
              ),
              Center(
                child: SizedBox(
                  width: 80.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: LinearProgressIndicator(
                      backgroundColor: MyColors.primary,
                      valueColor: AlwaysStoppedAnimation(
                        Color(0xff828423),
                      ),
                      minHeight: 1.2.h,
                    ),
                  ),
                ),
              ),
              Spacer(),
            ])
          ],
        ));
  }
}
