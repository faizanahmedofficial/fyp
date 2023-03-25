import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget customButton(String title,
    {
      bool border = false,
      FontWeight weight =  FontWeight.w500,
    String? iconPath,
    Function? ontap,
    Color txtColor = Colors.white,
    double font = 0,
    double height = 0,
    Color background = Colors.white,
    Color bColor = Colors.black,
    bool dot = false}) {
  return onPress(
    ontap: () {
      if (ontap != null) {
        ontap();
      }
    },
    child: Container(
        height: height == 0 ? 6.3.h : height.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: background,
           
            border: border
                ?  Border.all(
                   color: bColor,
                    width: 1):null),
        child: Stack(alignment: Alignment.center, children: [
          Row(children: [
            iconPath == null ? SizedBox() : SizedBox(width: 30),
            iconPath == null
                ? SizedBox()
                : Image.asset(iconPath, height: 3.h),
            Spacer(),
            Text(title,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: font == 0 ? 17.sp : font.sp,
                    fontWeight: weight,
                    color: txtColor)),
            Spacer(flex: iconPath == null ? 1 : 3)
          ]),
          
        ])),
  );
}
