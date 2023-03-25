import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/controller/addController.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'equipmentView.dart';

class CartPage extends StatelessWidget {
  //  NavController nacCon =Get.put(NavController());

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
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(Icons.arrow_back_ios)),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Chip(
                                  backgroundColor: Colors.green[900],
                                  label: Text(
                                    "  My Cart  ",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 16.sp),
                                  )),
                              Spacer()
                            ],
                          ),
                          SizedBox(height: 3.h),
                          // TextField(
                          //   style: GoogleFonts.poppins(
                          //     color: MyColors.primary2,
                          //     fontSize: 16.sp,
                          //   ),
                          //   decoration: InputDecoration(
                          //       filled: true,
                          //       fillColor: MyColors.rust,
                          //       enabledBorder: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(8),
                          //         borderSide:
                          //             BorderSide(color: Colors.transparent),
                          //       ),
                          //       focusedBorder: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(8),
                          //         borderSide:
                          //             BorderSide(color: Colors.transparent),
                          //       ),
                          //       contentPadding: EdgeInsets.all(8),
                          //       suffixIcon: Icon(
                          //         Icons.search_outlined,
                          //         size: 3.5.h,
                          //       )),
                          // ),
                          // SizedBox(height: 3.h),

                          SizedBox(
                            height: 75.h,
                            width: 100.w,
                            child: GridView.builder(
                              itemCount: equipmentList.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: .7,
                              ),
                              // scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 8),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(EquipmentView(equipmentList[index]));
                                  },
                                  child: Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          color: MyColors.primary,
                                          borderRadius:
                                              BorderRadius.circular(38)),
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
                                                    BorderRadius.circular(30)),
                                            child: Image.asset(
                                                "assets/images/eq.png"),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            equipmentList[index].name,
                                            style: GoogleFonts.poppins(
                                                color: MyColors.primary2,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15.sp),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            "${equipmentList[index].price} PKR",
                                            style: GoogleFonts.poppins(
                                                color: MyColors.primary2,
                                                fontWeight: FontWeight.w700,
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
                                                style: GoogleFonts.poppins(
                                                    color: MyColors.rust,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 15.sp),
                                              ),
                                              Spacer()
                                            ],
                                          ),
                                          Chip(
                                            backgroundColor: MyColors.primary2,
                                            labelPadding: EdgeInsets.symmetric(
                                                horizontal: 14),
                                            label: Text(
                                              "Details",
                                              style: GoogleFonts.poppins(
                                                  color: Color(0xffA4BE7B),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15.sp),
                                            ),
                                          ),
                                          Spacer(),
                                        ],
                                      )),
                                ),
                              ),
                            ),
//  ClipOval(
//       child: Image.asset(
//         "assets/images/g2.png",
//         height: 16.h,
//           fit: BoxFit.fill),

//     ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
