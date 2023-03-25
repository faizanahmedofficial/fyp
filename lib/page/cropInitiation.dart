import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/page/cropTimeLine.dart';
import 'package:kashkaar/widgets/dropDown.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CropInitiation extends StatefulWidget {
  const CropInitiation({super.key});

  @override
  State<CropInitiation> createState() => _CropInitiationState();
}

class _CropInitiationState extends State<CropInitiation> {
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
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 3.h),
                    Center(
                      child: Text(
                        "Crop Initiation",
                        style: GoogleFonts.poppins(
                            color: MyColors.primary2,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 4.h),
                     Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 4,
                      child: TextField(
                        style: GoogleFonts.poppins(
                          color: MyColors.primary2,
                          fontSize: 16.sp,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: MyColors.rust,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 14),
                            hintText: "Area of Land",
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 4,
                      child: TextField(
                        style: GoogleFonts.poppins(
                          color: MyColors.primary2,
                          fontSize: 16.sp,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: MyColors.rust,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 14),
                            hintText: "Crop Type",
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    SizedBox(height: 4.h),
                   
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 4,
                      child: TextField(
                        style: GoogleFonts.poppins(
                          color: MyColors.primary2,
                          fontSize: 16.sp,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: MyColors.rust,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 14),
                            hintText: "Season",
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 4,
                      child: TextField(
                        style: GoogleFonts.poppins(
                          color: MyColors.primary2,
                          fontSize: 16.sp,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: MyColors.rust,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 14),
                            hintText: "Location",
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: onPress(
                          ontap: (){
                            Get.to(CropTimeLine());
                          },
                          child: Container(
                            height: 6.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                                color: MyColors.primary2,
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                                child: Text(
                              "Initiate Crop",
                              style: GoogleFonts.poppins(
                                  color: MyColors.rust,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
