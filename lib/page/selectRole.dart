import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/page/loginScreen.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
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
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  Spacer(),
                  onPress(
                    ontap: () {
                      Get.to(LoginScreen(3));
                    },
                    child: CircleAvatar(
                      radius: 7.h,
                      backgroundColor: MyColors.rust,
                      child: Image.asset(
                        "assets/icons/user.png",
                        height: 9.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    "Admin",
                    style: GoogleFonts.poppins(
                        color: MyColors.primary,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  onPress(
                      ontap: () {
                        Get.to(LoginScreen(2));
                      },
                      child: CircleAvatar(
                        radius: 7.h,
                        backgroundColor: MyColors.rust,
                        child: Image.asset(
                          "assets/icons/farmer.png",
                          height: 9.h,
                        ),
                      )),
                  SizedBox(height: 1.h),
                  Text(
                    "Farmer",
                    style: GoogleFonts.poppins(
                        color: MyColors.primary,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  onPress(
                    ontap: () {
                      Get.to(LoginScreen(1));
                    },
                    child: CircleAvatar(
                      radius: 7.h,
                      backgroundColor: MyColors.rust,
                      child: Image.asset(
                        "assets/icons/vendor.png",
                        height: 9.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    "Vendor",
                    style: GoogleFonts.poppins(
                        color: MyColors.primary,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  // Spacer(flex: 4,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
