import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class CropTimeLine extends StatelessWidget {
  const CropTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 3.h),
                    Center(
                      child: Text(
                        "Crop Time Line",
                        style: GoogleFonts.poppins(
                            color: MyColors.primary2,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Expanded(
                          child: Text("Area of Land : ",
                           style: GoogleFonts.poppins(
                                  color: MyColors.primary2,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Expanded(
                          flex: 2,
                          child: Text("200 square meter",
                            style: GoogleFonts.poppins(
                                color: MyColors.primary2,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                        ),)
                      ],
                    ),
                    SizedBox(height: 2.h),

                      Row(
                      children: [
                        Expanded(
                          child: Text("Crop Type : ",
                           style: GoogleFonts.poppins(
                                  color: MyColors.primary2,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Expanded(
                          flex: 2,
                          child: Text("industrial crops",
                            style: GoogleFonts.poppins(
                                color: MyColors.primary2,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                        ),)
                      ],
                    ),
                      SizedBox(height: 2.h),
                      Row(
                      children: [
                        Expanded(
                          child: Text("Season : ",
                           style: GoogleFonts.poppins(
                                  color: MyColors.primary2,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Expanded(
                          flex: 2,
                          child: Text("Summer ",
                            style: GoogleFonts.poppins(
                                color: MyColors.primary2,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                        ),)
                      ],
                    ),
                      SizedBox(height: 2.h),
                      Row(
                      children: [
                        Expanded(
                          child: Text("Location : ",
                           style: GoogleFonts.poppins(
                                  color: MyColors.primary2,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Expanded(
                          flex: 2,
                          child: Text("Vancouver London ",
                            style: GoogleFonts.poppins(
                                color: MyColors.primary2,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                        ),)
                      ],
                    ),
                   SizedBox(height: 4.h),
                   Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
               
            // textDirection: TextDirection.rtl,
            // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            // border:TableBorder.all(width: 2.0,color: Colors.red),
            // textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          //  defaultColumnWidth: FlexColumnWidth(5.2),
border:TableBorder.all(width: 2.0,color: MyColors.primary),
            children: [
              TableRow(
                
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Days",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                 Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Benefits",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  // Text("University",textScaleFactor: 1.5),
                ]
              ),
               TableRow(
                children: [
                Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Day 1",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                 Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Give Water",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ]
              ),
              TableRow(
                children: [
                 Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Day 2",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                 Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Under Sun Light",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ]
              ),
              TableRow(
                children: [
         Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Day 3",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                 Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Keep away from Bacteria",
                      textAlign: TextAlign.center,
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  
                ]
              ),
               TableRow(
                children: [
         Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Day 4",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                 Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Benefits",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  
                ]
              ),
               TableRow(
                children: [
         Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Day 5",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                 Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Benefits",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  
                ]
              ),
               TableRow(
                children: [
         Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Day 6",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                 Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Benefits",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  
                ]
              ),
               TableRow(
                children: [
         Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Day 7",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                 Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Benefits",
                       style: GoogleFonts.poppins(
                                    color: MyColors.primary2,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  
                ]
              ),
            ],
        ))
                   
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