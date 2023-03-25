import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
        body: Stack(
          // alignment: Alignment.center,
          children: [
            Container(
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
                  padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      onPress(
                        ontap: (){
                          // Get.back();
                        },
                        child: Image.asset("assets/icons/back.png",height: 3.h,)),
                      SizedBox(height: 1.h),
                      Center(child: Text("View Reports",
                      style: GoogleFonts.poppins(
                        color: MyColors.primary2,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      )),
                ],
                  ),
                ))
            ),
          ],
        ),
    );
  }
}