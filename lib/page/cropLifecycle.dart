import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CropLifeCycle extends StatelessWidget {
  const CropLifeCycle({super.key});

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
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Spacer(),
                    Center(
                      child: Text("Crop Initiation",
                 style: GoogleFonts.poppins(
                                        color: MyColors.primary2,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700
                                      ),
                      ),),
                    Spacer(),
                    Image.asset("assets/images/group.png"),
                     Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            elevation: 10,
            child: Container(
              height: 6.h,
              width: 45.w,
              decoration: BoxDecoration(
                color: MyColors.rust,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Center(child: Text("Cancel",
              style: GoogleFonts.poppins(
                color: MyColors.primary2,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600
                
              ),
              )),
            ),
          ),
          ),
                    Spacer(),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
