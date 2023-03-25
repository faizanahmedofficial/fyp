import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/controller/homeController.dart';
import 'package:kashkaar/page/cart.dart';
import 'package:kashkaar/page/eqpList.dart';
import 'package:kashkaar/page/manageProfile.dart';
import 'package:kashkaar/page/selectRole.dart';
import 'package:kashkaar/widgets/customButton.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  //  NavController nacCon =Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (HomeController con) => con.profile
            ? ManageProfile()
            : Scaffold(
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
                                              color: Colors.white,
                                              fontSize: 16.sp),
                                        )),
                                  ),
                                  SizedBox(width: 5),
                                  // Spacer(),
                                  InkWell(
                                    onTap: () {
                                      Get.to(CartPage());
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.green[900],
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Spacer(),
                                  onPress(
                                    ontap: () {
                                      con.profile = true;
                                      con.update();
                                    },
                                    child: CircleAvatar(
                                      radius: 3.4.h,
                                      backgroundImage:
                                          AssetImage("assets/images/g2.png"),
                                    ),
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
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                              SizedBox(height: 2.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                      width: 40.w,
                                      child: customButton("View Equipment",
                                          height: 4,
                                          background: MyColors.primary2,
                                          font: 15,
                                          txtColor: MyColors.rust,
                                          weight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              Stack(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/track.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Offers for Farmers",
                                              style: GoogleFonts.poppins(
                                                  color: MyColors.rust
                                                      .withOpacity(0.8),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.sp),
                                            ),
                                            Text(
                                              "Sale 10% off  ",
                                              style: GoogleFonts.poppins(
                                                  color: MyColors.primary2,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.sp),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(height: 2.h),
                              SizedBox(
                                height: 25.h,
                                width: 100.w,
                                child: ListView.builder(
                                  itemCount: 2,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(Eqp());
                                      },
                                      child: Container(
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                              color: MyColors.primary,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Spacer(),
                                              Container(
                                                height: 10.h,
                                                width: 25.w,
                                                decoration: BoxDecoration(
                                                    color: MyColors.rust,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Image.asset(
                                                  "assets/images/eq.png",
                                                  height: 10.h,
                                                  width: 25.w,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                "Backpack Sprayer",
                                                style: GoogleFonts.poppins(
                                                    color: MyColors.primary2,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15.sp),
                                              ),
                                              SizedBox(height: 3),
                                              Text(
                                                "12000 PKR",
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
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 15.sp),
                                                  ),
                                                  Spacer()
                                                ],
                                              ),
                                              Chip(
                                                backgroundColor:
                                                    MyColors.primary2,
                                                labelPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 14),
                                                label: Text(
                                                  "Details",
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xffA4BE7B),
                                                      fontWeight:
                                                          FontWeight.w600,
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
