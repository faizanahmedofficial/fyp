import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/Models/equipmentModel.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/controller/addController.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EquipmentView extends StatelessWidget {
  EquipmentModel equipment;
  EquipmentView(this.equipment, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddController>(
        init: AddController(),
        builder: (AddController con) => SafeArea(
              top: false,
              bottom: false,
              child: Scaffold(
                  resizeToAvoidBottomInset: true,
                  body: Stack(
                      // alignment: Alignment.center,
                      children: [
                        SizedBox(
                            height: 100.h,
                            width: 100.w,
                            child: Image.asset(
                              "assets/images/bg1.png",
                              fit: BoxFit.fill,
                            )),
                        SafeArea(
                            bottom: false,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Image.asset(
                                        "assets/icons/back.png",
                                        height: 4.h,
                                        color: MyColors.rust,
                                      ),
                                    ),
                                    Spacer(),
                                    Center(
                                        child: Image.asset(
                                            "assets/images/eq1.png")),
                                    SizedBox(height: 2.h),
                                    Center(
                                        child: Text(
                                      equipment.name,
                                      style: GoogleFonts.poppins(
                                        color: MyColors.rust,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    Spacer(
                                      flex: 5,
                                    ),
                                  ],
                                ))),
                        Positioned.fill(
                            child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 100.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Price",
                                        style: GoogleFonts.poppins(
                                            color: MyColors.primary2,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 19.sp),
                                      ),
                                      SizedBox(height: 1.h),
                                      Text(
                                        "${equipment.price} PKR",
                                        style: GoogleFonts.poppins(
                                            color: MyColors.primary2,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17.5.sp),
                                      ),
                                      SizedBox(height: 1.h),
                                      Row(
                                        children: [
                                          Text(
                                            "Description",
                                            style: GoogleFonts.poppins(
                                                color: MyColors.primary2,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 19.sp),
                                          ),
                                          Spacer(
                                            flex: 3,
                                          ),
                                          Image.asset(
                                            "assets/images/neg.png",
                                            height: 4.h,
                                          ),
                                          Spacer(),
                                          Text(
                                            "1",
                                            style: GoogleFonts.poppins(
                                                color: MyColors.primary2,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 19.sp),
                                          ),
                                          Spacer(),
                                          Image.asset(
                                            "assets/images/pos.png",
                                            height: 4.h,
                                          ),
                                          Spacer(),
                                        ],
                                      ),
                                      SizedBox(height: 2.h),
                                      SizedBox(
                                        width: 80.w,
                                        child: Text(
                                          equipment.desc,
                                          maxLines: 5,
                                          style: GoogleFonts.poppins(
                                              color: MyColors.primary2,
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 3.h),
                                Container(
                                  // height: 6.h,
                                  color: MyColors.primary2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            equipmentList.contains(equipment)
                                                ? equipmentList
                                                    .remove(equipment)
                                                : equipmentList.add(equipment);
                                            EasyLoading.showInfo(
                                                !equipmentList
                                                        .contains(equipment)
                                                    ? 'Removed from Cart'
                                                    : 'Added To Cart',
                                                duration: Duration(seconds: 2));
                                            con.update();
                                          },
                                          child: Chip(
                                              backgroundColor: MyColors.primary,
                                              label: Text(
                                                equipmentList
                                                        .contains(equipment)
                                                    ? 'Remove'
                                                    : 'Add To Cart',
                                                style: GoogleFonts.poppins(
                                                  color: MyColors.rust,
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )),
                                        ),
                                        Spacer(),
                                        Chip(
                                            backgroundColor: MyColors.rust,
                                            label: Text(
                                              "  Rent  ",
                                              style: GoogleFonts.poppins(
                                                color: MyColors.primary2,
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )),
                                        SizedBox(width: 15),
                                        Chip(
                                            backgroundColor: MyColors.rust,
                                            label: Text(
                                              "   Buy   ",
                                              style: GoogleFonts.poppins(
                                                color: MyColors.primary2,
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                      ])),
            ));
  }
}
