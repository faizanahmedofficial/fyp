import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashkaar/page/vendorPage/farmerList.dart';
import 'package:kashkaar/page/vendorPage/reportPage.dart';
import 'package:kashkaar/page/vendorPage/vendorLists.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainPageAdmin extends StatelessWidget {
  const MainPageAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
          // alignment: Alignment.center,
          children: [
            SizedBox(
                height: 100.h,
                width: 100.w,
                child: Image.asset(
                  "assets/images/bg.png",
                  fit: BoxFit.fill,
                )),
            SafeArea(
                bottom: false,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                          Spacer(),
                              Image.asset("assets/icons/log.png",height: 5.h,),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Spacer(),
                              onPress(
                                ontap: (){
                                  Get.to(ReportPage());
                                },
                                child: Image.asset(
                                  "assets/icons/r1.png",
                                  height: 20.h,
                                ),
                              ),
                              Spacer()
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            children: [
                              Spacer(),
                              onPress(
                                ontap: (){
                                  Get.to(FarmerLists());
                                },
                                child: Image.asset(
                                  "assets/icons/r2.png",
                                  height: 20.h,
                                ),
                              ),
                              SizedBox(width: 20),
                              onPress(
                                   ontap: (){
                                  Get.to(VendorLists());
                                },
                                child: Image.asset(
                                  "assets/icons/r3.png",
                                  height: 20.h,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                          Spacer(
                            flex: 2,
                          ),
                        ])))
          ]),
    );
  }
}
