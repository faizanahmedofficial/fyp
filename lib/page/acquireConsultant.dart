import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AcquireConsultant extends StatelessWidget {
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
              bottom: false,
              child: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    onPress(
                        ontap: () {
                          // Get.back();
                        },
                        child: Image.asset(
                          "assets/icons/back.png",
                          height: 3.h,
                        )),
                    SizedBox(height: 1.h),
                    Center(
                        child: Text(
                      "Acquire Consultant",
                      style: GoogleFonts.poppins(
                        color: MyColors.primary2,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                    SizedBox(
                      height: 85.h,
                      child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 0.8,
                          mainAxisSpacing: 40.0,
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: MyColors.rust,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 4.4.h,
                                      backgroundImage:
                                          AssetImage("assets/images/g3.jpg"),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "Ali Khan",
                                      style: GoogleFonts.poppins(
                                          color: MyColors.primary,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Age : 24",
                                      style: GoogleFonts.poppins(
                                          color: MyColors.primary,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        popUp(
                                            context,
                                            'Ali Khan',
                                            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
                                            '24',
                                            "assets/images/g3.jpg");
                                      },
                                      child: Chip(
                                          visualDensity: VisualDensity.standard,
                                          backgroundColor: MyColors.primary2,
                                          label: Text(
                                            "See Info",
                                            style: GoogleFonts.poppins(
                                                color: MyColors.rust,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: MyColors.rust,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 4.4.h,
                                      backgroundImage:
                                          AssetImage("assets/images/g4.jpeg"),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "Raja Umer",
                                      style: GoogleFonts.poppins(
                                          color: MyColors.primary,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Age : 27",
                                      style: GoogleFonts.poppins(
                                          color: MyColors.primary,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        popUp(
                                            context,
                                            "Raja Umer",
                                            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
                                            '27',
                                            "assets/images/g4.jpeg");
                                      },
                                      child: Chip(
                                          visualDensity: VisualDensity.standard,
                                          backgroundColor: MyColors.primary2,
                                          label: Text(
                                            "See Info",
                                            style: GoogleFonts.poppins(
                                                color: MyColors.rust,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: MyColors.rust,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 4.4.h,
                                      backgroundImage:
                                          AssetImage("assets/images/g5.jpeg"),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "M. Abdullah",
                                      style: GoogleFonts.poppins(
                                          color: MyColors.primary,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Age : 19",
                                      style: GoogleFonts.poppins(
                                          color: MyColors.primary,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        popUp(
                                            context,
                                            "M. Abdullah",
                                            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
                                            '19',
                                            "assets/images/g5.jpeg");
                                      },
                                      child: Chip(
                                          visualDensity: VisualDensity.standard,
                                          backgroundColor: MyColors.primary2,
                                          label: Text(
                                            "See Info",
                                            style: GoogleFonts.poppins(
                                                color: MyColors.rust,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
              ))),
        ],
      ),
    );
  }
}

popUp(context, name, desc, age, img) async {
  EasyLoading.dismiss();
  await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: MyColors.rust,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(35.0))),
          content: Container(
            height: 40.h,
            // width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5),
                CircleAvatar(
                  radius: 4.4.h,
                  backgroundImage: AssetImage(img),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Text('Name: ',
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: MyColors.primary,
                            letterSpacing: 1,
                            fontSize: 16.sp)),
                    Text(name,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: MyColors.primary,
                            letterSpacing: 1,
                            fontSize: 16.sp)),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    Text('Age: ',
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: MyColors.primary,
                            letterSpacing: 1,
                            fontSize: 16.sp)),
                    Text(age,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: MyColors.primary,
                            letterSpacing: 1,
                            fontSize: 16.sp)),
                  ],
                ),
                SizedBox(height: 1.h),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('Description: ',
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: MyColors.primary,
                                letterSpacing: 1,
                                fontSize: 16.sp)),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 40.w,
                          child: Text(desc,
                              textAlign: TextAlign.start,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: MyColors.primary,
                                  letterSpacing: 1,
                                  fontSize: 15.sp)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        EasyLoading.showSuccess('Hired!',
                            duration: Duration(seconds: 3));
                        Get.back();
                      },
                      child: Container(
                        height: 4.5.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            color: MyColors.primary,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            'HIRE',
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: 0.3,
                              // fontSize: MyFont.b
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        height: 4.5.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            color: MyColors.darkRed,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            'DISMISS',
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: 0.3,
                              // fontSize: MyFont.b
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      });
}
