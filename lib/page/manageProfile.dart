import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/controller/homeController.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ManageProfile extends StatefulWidget {
  const ManageProfile({super.key});

  @override
  State<ManageProfile> createState() => _ManageProfileState();
}

class _ManageProfileState extends State<ManageProfile> {
  DateTime selectedDate = DateTime.now();
_selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: selectedDate, // Refer step 1
    firstDate: DateTime(2000),
    lastDate: DateTime(2025),
  );
  if (picked != null && picked != selectedDate)
    setState(() {
      selectedDate = picked;
    });
}
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
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    onPress(
                        ontap: () {
                        //  Get.to(BottomNavv());
                        Get.find<HomeController>().profile=false;
                        Get.find<HomeController>().update();
                        },
                        child: Image.asset(
                          "assets/icons/back.png",
                          height: 3.h,
                        )),
                    Center(
                        child: Text(
                      "Manage Profile",
                      style: GoogleFonts.poppins(
                        color: MyColors.primary2,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                SizedBox(height: 5.h),
                    Center(
                      child: CircleAvatar(
                        radius: 6.h,
                        backgroundImage: AssetImage("assets/images/g2.png"),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          color: MyColors.primary,
          elevation: 5,
           child: TextField(
                           style: GoogleFonts.poppins(
                           color: MyColors.rust,
                        fontSize: 16.sp,
                        ),
                          decoration: InputDecoration(
                          filled: true,
                          fillColor: MyColors.primary,
                             enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.transparent
                            ),
                            
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.transparent
                            ),
                            
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal:14),
                          hintText: "Jenifer Freddly",
                          hintStyle: GoogleFonts.poppins(
                            color: MyColors.rust,
                            fontWeight: FontWeight.w300
                          )
           
           
                          ),),
           ),
           SizedBox(height: 3.h),
           Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          color: MyColors.primary,
          elevation: 5,
           child: TextField(
                           style: GoogleFonts.poppins(
                           color: MyColors.rust,
                        fontSize: 16.sp,
                        ),
                          decoration: InputDecoration(
                          filled: true,
                          fillColor: MyColors.primary,
                             enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.transparent
                            ),
                            
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.transparent
                            ),
                            
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal:14),
                          hintText: "Age",
                          hintStyle: GoogleFonts.poppins(
                            color: MyColors.rust,
                            fontWeight: FontWeight.w300
                          )
           
           
                          ),),
           ),
           SizedBox(height: 3.h),
           Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          color: MyColors.primary,
          elevation: 5,
           child: TextField(
                           style: GoogleFonts.poppins(
                           color: MyColors.rust,
                        fontSize: 16.sp,
                        ),
                          decoration: InputDecoration(
                          filled: true,
                          fillColor: MyColors.primary,
                             enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.transparent
                            ),
                            
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.transparent
                            ),
                            
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal:14),
                          hintText: "Date of Birth",
                          hintStyle: GoogleFonts.poppins(
                            color: MyColors.rust,
                            fontWeight: FontWeight.w300
                          ),
                          
                          suffixIcon: onPress(
                            ontap: (){
                              _selectDate(context);
                          
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:  Image.asset("assets/icons/calendar.png",height: 3.h,)
                            ),
                          ),
                          suffixIconConstraints: BoxConstraints()
           
           
                          ),),
           ),
            SizedBox(height: 3.h),
           Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          color: MyColors.primary,
          elevation: 5,
           child: TextField(
                           style: GoogleFonts.poppins(
                           color: MyColors.rust,
                        fontSize: 16.sp,
                        ),
                          decoration: InputDecoration(
                          filled: true,
                          fillColor: MyColors.primary,
                             enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.transparent
                            ),
                            
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.transparent
                            ),
                            
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal:14),
                          hintText: "Date of Birth",
                          hintStyle: GoogleFonts.poppins(
                            color: MyColors.rust,
                            fontWeight: FontWeight.w300
                          ),
                          
                          suffixIcon: onPress(
                            ontap: (){
                              _selectDate(context);
                          
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:  Image.asset("assets/icons/mail.png",height: 3.h,)
                            ),
                          ),
                          suffixIconConstraints: BoxConstraints()
           
           
                          ),),
           ),
            SizedBox(height: 4.h),
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
                color: MyColors.primary2,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Center(child: Text("Update",
              style: GoogleFonts.poppins(
                color: MyColors.rust,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600
                
              ),
              )),
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
