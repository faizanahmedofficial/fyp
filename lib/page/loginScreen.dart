import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/controller/authController.dart';
import 'package:kashkaar/page/bottomNav.dart';
import 'package:kashkaar/page/signupScreen.dart';
import 'package:kashkaar/page/vendorPage/mainPageVendor.dart';
import 'package:kashkaar/page/vendorPage/vendorNav.dart';
import 'package:kashkaar/widgets/checkBox.dart';
import 'package:kashkaar/widgets/customButton.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  int index;
  LoginScreen(this.index);

  bool shouldCheck = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController con) => Scaffold(
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
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Image.asset(
                              "assets/icons/logo.png",
                              height: 26.h,
                            )),
                            Text(
                              "Mobile Number",
                              style: GoogleFonts.poppins(
                                  color: MyColors.primary2,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 1.6.h),
                            TextField(
                              style: GoogleFonts.poppins(
                                color: MyColors.primary2,
                                fontSize: 16.sp,
                              ),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: MyColors.primary2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: MyColors.primary2),
                                  ),
                                  contentPadding: EdgeInsets.all(12),
                                  prefixIcon: Row(
                                    children: [
                                      Spacer(),
                                      Text(
                                        "+ 92",
                                        style: GoogleFonts.poppins(
                                            color: MyColors.primary,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Spacer(),
                                      VerticalDivider(
                                        thickness: 1.5,
                                        color: MyColors.primary,
                                      )
                                    ],
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                      maxWidth: 15.w, maxHeight: 4.h)),
                            ),
                            SizedBox(height: 3.h),
                            Text(
                              "Password",
                              style: GoogleFonts.poppins(
                                  color: MyColors.primary2,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 1.6.h),
                            TextField(
                              style: GoogleFonts.poppins(
                                color: MyColors.primary2,
                                fontSize: 16.sp,
                              ),
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: MyColors.primary2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: MyColors.primary2),
                                  ),
                                  contentPadding: EdgeInsets.all(12),
                                  suffixIcon:
                                      Image.asset("assets/icons/Eye.png"),
                                  suffixIconConstraints: BoxConstraints()),
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 0.9,
                                  child: CustomCheckBox(
                                    value: shouldCheck,
                                    shouldShowBorder: true,
                                    uncheckedFillColor: Colors.transparent,
                                    uncheckedIconColor: Colors.transparent,
                                    borderColor: Colors.black,
                                    checkedFillColor: Colors.transparent,
                                    checkedIconColor: Colors.black,
                                    borderRadius: 2,
                                    borderWidth: 1,
                                    checkBoxSize: 2.h,
                                    onChanged: (val) {
                                      //do your stuff here
                                      // setState(() {
                                      shouldCheck = val;
                                      con.update();
                                      // });
                                    },
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  "Remember Me",
                                  style: GoogleFonts.poppins(
                                      color: MyColors.primary2,
                                      fontSize: 16.sp),
                                ),
                                Spacer(),
                                Text(
                                  "Forgot Password",
                                  style: GoogleFonts.poppins(
                                      color: MyColors.red, fontSize: 16.sp),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.h),
                            onPress(
                              ontap: () {
                                Get.to(SignupScreen());
                              },
                              child: Text(
                                "Don’t have an account? Sign Up",
                                style: GoogleFonts.poppins(
                                    color: MyColors.primary2, fontSize: 16.sp),
                              ),
                            ),
                            SizedBox(height: 7.h),
                            customButton("Login", background: MyColors.primary2,
                                ontap: () {
                              index == 2
                                  ? index == 3
                                      ? Get.to(MainPageAdmin())
                                      : Get.to(BottomNavv())
                                  : Get.to(MainPageAdmin());
                            })
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
