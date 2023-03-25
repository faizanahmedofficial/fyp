import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/controller/addController.dart';
import 'package:kashkaar/page/equipmentView.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Eqp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddController>(
        init: AddController(),
        builder: (AddController con) => Scaffold(
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
                      child: SingleChildScrollView(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            onPress(
                                ontap: () {
                                  Get.back();
                                },
                                child: Image.asset(
                                  "assets/icons/back.png",
                                  height: 3.h,
                                )),
                            SizedBox(height: 1.h),
                            Center(
                                child: Text(
                              "Buy Equipments",
                              style: GoogleFonts.poppins(
                                color: MyColors.primary2,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            SizedBox(height: 20),
                            SizedBox(
                              height: 85.h,
                              child: GridView.count(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 2.0,
                                  childAspectRatio: 0.7,
                                  mainAxisSpacing: 29.0,
                                  shrinkWrap: true,
                                  children: List.generate(
                                    con.equipments.length,
                                    (index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: InkWell(
                                          onTap: () {
                                            Get.to(EquipmentView(con.equipments[index]));
                                          },
                                          child: Container(
                                              width: 40.w,
                                              decoration: BoxDecoration(
                                                  color: MyColors.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          38)),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Spacer(),
                                                  Container(
                                                    height: 13.h,
                                                    width: 25.w,
                                                    decoration: BoxDecoration(
                                                        color: MyColors.rust,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30)),
                                                    child: Image.asset(
                                                        "assets/images/eq.png"),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    con.equipments[index].name,
                                                    style: GoogleFonts.poppins(
                                                        color:
                                                            MyColors.primary2,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 15.sp),
                                                  ),
                                                  SizedBox(height: 3),
                                                  Text(
                                                    "${con.equipments[index].price} PKR",
                                                    style: GoogleFonts.poppins(
                                                        color:
                                                            MyColors.primary2,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 15.sp),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Spacer(),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 1.9.h,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Text(
                                                        "4/5",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                color: MyColors
                                                                    .rust,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize:
                                                                    15.sp),
                                                      ),
                                                      Spacer()
                                                    ],
                                                  ),
                                                  Chip(
                                                    backgroundColor:
                                                        MyColors.primary2,
                                                    labelPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 14),
                                                    label: Text(
                                                      "Details",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color: Color(
                                                                  0xffA4BE7B),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 15.sp),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                ],
                                              )),
                                        ),
                                      );
                                    },
                                  )),
                            ),
                          ],
                        ),
                      ))),
                ],
              ),
            ));
  }
}
