import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/controller/addController.dart';
import 'package:kashkaar/controller/vendorNAvController.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddEquipment extends StatelessWidget {
  AddEquipment({super.key});
  VendorNavController Vendornav = Get.put(VendorNavController());
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
                    bottom: false,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.h),
                            Center(
                              child: Text(
                                "Add Equipment",
                                style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Center(
                                child: Image.asset(
                              "assets/icons/profile.png",
                              height: 12.h,
                            )),
                            // DropDown22(),

                            SizedBox(height: 3.h),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              elevation: 4,
                              child: TextField(
                                controller: con.pname,
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
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 14),
                                    hintText: "Product Name",
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
                                controller: con.price,
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
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 14),
                                    hintText: "Price",
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
                                controller: con.area,
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
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 14),
                                    hintText: "Options",
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
                                controller: con.quantity,
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
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 14),
                                    hintText: "Quantity",
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
                                controller: con.desc,
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
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 14),
                                    hintText: "Description",
                                    hintStyle: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Center(
                              child: onPress(
                                ontap: () {
                                  if (con.pname.text == "" ||
                                      con.quantity.text == "" ||
                                      con.price.text == "" ||
                                      con.desc.text == "") {
                                    EasyLoading.showInfo('Data missing',
                                        duration: Duration(seconds: 2));
                                  } else {
                                    con.set();
                                    Vendornav.index = true;
                                    Vendornav.update();
                                  }
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  elevation: 10,
                                  child: Container(
                                    height: 6.h,
                                    width: 45.w,
                                    decoration: BoxDecoration(
                                        color: MyColors.primary2,
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Center(
                                        child: Text(
                                      "Save",
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
            ));
  }
}
