import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/controller/vendorNAvController.dart';
import 'package:kashkaar/page/addEquipment.dart';
import 'package:kashkaar/page/vendorPage/equipmentList.dart';
import 'package:kashkaar/page/vendorPage/vendorHome.dart';
import 'package:kashkaar/page/weatherView.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VendorBottomNavv extends StatelessWidget with WidgetsBindingObserver {
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VendorNavController>(
        init: VendorNavController(),
        builder: (VendorNavController con) => SafeArea(
              top: false,
              child: Scaffold(
                  extendBody: true,
                  resizeToAvoidBottomInset: false,
                  body: PageStorage(
                      bucket: bucket,
                      child: Stack(children: [
                        con.index ? EquipmentList() : con.currentScreen
                      ])),
                  bottomNavigationBar: SizedBox(
                      child: BottomAppBar(
                          color: MyColors.primary2,
                          notchMargin: 0,
                          child: Row(children: [
                            // Spacer(),
                            Expanded(
                              child: onPress(
                                  ontap: () {
                                    con.index = false;
                                    con.currentScreen = VendorHomePage();
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
                                    con.currentScreen = AddEquipment();
                                    con.currentTab = 1;
                                    con.update();
                                  },
                                  child: Container(
                                    height: 8.h,
                                    color: con.currentTab == 1
                                        ? MyColors.primary
                                        : Colors.transparent,
                                    child: Image.asset(
                                      "assets/icons/tool.png",
                                      height: 2.h,
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: onPress(
                                  ontap: () {
                                    con.index = false;

                                    Get.to(WeatherView());
                                  },
                                  child: Container(
                                    height: 8.h,
                                    color: Colors.transparent,
                                    child: Image.asset(
                                      "assets/nav/n4.png",
                                    ),
                                  )),
                            ),
                          ])))),
            ));
  }
}
