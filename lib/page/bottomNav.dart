import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/controller/navController.dart';
import 'package:kashkaar/page/acquireConsultant.dart';
import 'package:kashkaar/page/cropInitiation.dart';
import 'package:kashkaar/page/cropLifecycle.dart';
import 'package:kashkaar/page/homePage.dart';
import 'package:kashkaar/page/weatherView.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomNavv extends StatelessWidget with WidgetsBindingObserver {
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavController>(
        init: NavController(),
        builder: (NavController con) => SafeArea(
              top: false,
              child: Scaffold(
                  extendBody: true,
                  resizeToAvoidBottomInset: false,
                  body: PageStorage(
                      bucket: bucket,
                      child: Stack(children: [con.currentScreen])),
                  bottomNavigationBar: SizedBox(
                      child: BottomAppBar(
                          color: MyColors.primary2,
                          notchMargin: 0,
                          child: Row(children: [
                            // Spacer(),
                            Expanded(
                              child: onPress(
                                  ontap: () {
                                    con.currentScreen = HomePage();
                                    con.currentTab = 0;
                                    con.update();
                                  },
                                  child: Container(
                                    height: 8.h,
                                    color: con.currentTab == 0
                                        ? MyColors.primary
                                        : Colors.transparent,
                                    child: Image.asset(
                                      "assets/nav/hom1.png",
                                    ),
                                  )),
                            ),
                            // Spacer(),
                            Expanded(
                              child: onPress(
                                  ontap: () {
                                    con.currentScreen = CropInitiation();
                                    con.currentTab = 1;
                                    con.update();
                                  },
                                  child: Container(
                                    height: 8.h,
                                    color: con.currentTab == 1
                                        ? MyColors.primary
                                        : Colors.transparent,
                                    child: Image.asset(
                                      "assets/nav/n2.png",
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: onPress(
                                  ontap: () {
                                    con.currentScreen = CropLifeCycle();
                                    con.currentTab = 2;
                                    con.update();
                                  },
                                  child: Container(
                                    height: 8.h,
                                    color: con.currentTab == 2
                                        ? MyColors.primary
                                        : Colors.transparent,
                                    child: Image.asset(
                                      "assets/nav/n3.png",
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: onPress(
                                  ontap: () {
                                    Get.to(WeatherView());
                                  },
                                  child: Container(
                                    height: 8.h,
                                    color: con.currentTab == 3
                                        ? MyColors.primary
                                        : Colors.transparent,
                                    child: Image.asset(
                                      "assets/nav/n4.png",
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: onPress(
                                  ontap: () {
                                    con.currentScreen = AcquireConsultant();
                                    con.currentTab = 4;
                                    con.update();
                                  },
                                  child: Container(
                                    height: 8.h,
                                    color: con.currentTab == 4
                                        ? MyColors.primary
                                        : Colors.transparent,
                                    child: Image.asset(
                                      "assets/nav/n5.png",
                                    ),
                                  )),
                            ),
                            // Spacer()
                          ])))),
            ));
  }
}
