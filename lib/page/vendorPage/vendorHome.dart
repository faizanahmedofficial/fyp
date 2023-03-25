import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/page/selectRole.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VendorHomePage extends StatelessWidget {
  const VendorHomePage({super.key});

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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.offAll(SelectRole());
                            },
                            child: Chip(
                                backgroundColor: MyColors.darkRed,
                                label: Text(
                                  "  Logout  ",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 16.sp),
                                )),
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 3.4.h,
                            backgroundImage: AssetImage("assets/images/g2.png"),
                          )
                        ],
                      ),
                      SizedBox(height: 3.h),
                      TextField(
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
                            contentPadding: EdgeInsets.all(8),
                            suffixIcon: Icon(
                              Icons.search_outlined,
                              size: 3.5.h,
                            )),
                      ),
                      SizedBox(height: 3.h),
                      Container(
                        width: 100.w,
                        height: 19.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyColors.primary,
                        ),
                        child: Row(
                          children: [
                            Spacer(),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Toba Tek Singh",
                                      style: GoogleFonts.poppins(
                                          color: MyColors.rust,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                      child: VerticalDivider(
                                        // indent: 15,
                                        // endIndent:25,

                                        thickness: 1.5,
                                        color: MyColors.rust,
                                      ),
                                    ),
                                    Text(
                                      "55°C",
                                      style: GoogleFonts.poppins(
                                          color: MyColors.rust,
                                          fontSize: 18.sp,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Text(
                                    DateFormat('MMM dd,yyy')
                                        .format(DateTime.now()),
                                    style: GoogleFonts.poppins(
                                        color: MyColors.rust,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                                flex: 4,
                                child: Image.asset(
                                  "assets/icons/sun.png",
                                  height: 10.h,
                                )),
                            Spacer()
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ));
  }
}
