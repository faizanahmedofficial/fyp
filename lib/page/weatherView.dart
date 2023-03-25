import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:kashkaar/widgets/slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WeatherView extends StatelessWidget {
   WeatherView({super.key});
List temp = [
  "Now",
  "10AM",
  "7AM",
  "6AM",
  "8AM",
  "11AM"
];
List days =[
  "Today",
  "Thu",
  "Fri",
  "Sat",
  "Sun",
  "Mon"
];
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
                        ontap: (){
                          Get.back();
                        },
                        child: Image.asset("assets/icons/back.png",height: 3.h,)),
                      SizedBox(height: 2.h),
                      Center(child: Text("Punjab",
                      style: GoogleFonts.poppins(
                        color: MyColors.primary2,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      )),
                      Center(
                        child: Text("  55 °",
                                  style: GoogleFonts.poppins(
                                  color: MyColors.primary2,
                                  fontSize: 24.sp,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                      ),
                      // SizedBox(height: 1.h),
                      Center(
                        child: Text("Sunny",
                         style: GoogleFonts.poppins(
                          color: MyColors.primary2,
                         
                          fontSize: 16.5.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ),
                      SizedBox(height: 0.4.h),
                      Row(
                        children: [
                          Spacer(),
                          Text("H : 19 °",
                          style: GoogleFonts.poppins(
                          color: MyColors.primary2,
                         
                          fontSize: 16.5.sp,
                          fontWeight: FontWeight.w600,
                        ),
                          ),
                          SizedBox(width: 15),
                          Text("L : 3 °",
                          style: GoogleFonts.poppins(
                          color: MyColors.primary2,
                         
                          fontSize: 16.5.sp,
                          fontWeight: FontWeight.w600,
                        ),
                          ),
                          Spacer(),

                        ],
                      ),
                      SizedBox(height: 3.h),
                      Container(
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColors.primary
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
                              child: Text("Sunny conditions will continue all day. Wind\ngusts are upto 7 mph. ,",
                              style: GoogleFonts.poppins( 
                                color: MyColors.rust,
                                fontSize: 14.sp
                              ),
                              ),
                            ),
                            Divider(
                              color: MyColors.rust,
                              thickness: 0.4,
                            ),
                            Padding(
                 padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 12),
                              child: Container(
                                height: 10.h,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(temp.length, (index) =>  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                                    child: Column(
                                        children: [
                                          Text(temp[index],
                                          style: GoogleFonts.poppins(
                                            color: MyColors.rust,
                                            fontSize: 15.sp

                                          ),
                                          ),
                                          SizedBox(height: 8),

                                          Image.asset("assets/icons/sun1.png",height: 3.h),
                                          SizedBox(height: 8),
                                          Stack(
                        
                                            children: [
                                              Text("66 ",
                                              style: GoogleFonts.poppins(
                                                color: MyColors.rust,
                                                fontSize: 15.sp

                                              ),
                                              ),
                                              Positioned(
                                                right: 0,
                                                top: -3,
                                                child: Text("°",
                                                 style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                              fontSize: 15.sp
                                                ),
                                                ),
                                              )
                                              
                                            ],
                                          ),
                                        ],
                                      ),
                                  ))
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Container(
                          width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColors.primary
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 10),
                              child: Row(
                                children: [
                                  Image.asset("assets/icons/calendar.png",height: 2.5.h,),
                                  SizedBox(width: 3.w),
                                  Text("10-DAY FORECAST",
                                  style: GoogleFonts.poppins(
                                    color: MyColors.rust,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w300
                                  ),
                                  )
                                ],
                              ),
                            ),
                              Divider(
                              color: MyColors.rust,
                              thickness: 0.4,
                            ),
                            Container(
                              height: 40.h,
                              child: ListView(
                                children: List.generate(days.length,(index) => 
                                Padding(padding: EdgeInsets.all(14),
                                 child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: 
                                        Text(days[index],
                                          style: GoogleFonts.poppins(
                                            color: MyColors.rust,
                                            fontSize: 15.sp

                                          ),
                                          ),),
                                    //  Spacer(),
                                    Expanded(
                                      flex: 2,
                                      child: 
                                          Image.asset("assets/icons/sun1.png",height: 3.6.h),),
                    //  Spacer(),
                                          Stack(
                        
                                            children: [
                                              Text("66 ",
                                              style: GoogleFonts.poppins(
                                                color: MyColors.rust,
                                                fontSize: 16.sp

                                              ),
                                              ),
                                              Positioned(
                                                right: 0,
                                                top: -3,
                                                child: Text("°",
                                                 style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                              fontSize: 15.sp
                                                ),
                                                ),
                                              )
                                              
                                            ],
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: SliderLabelWidget()),
                                           Stack(
                        
                                            children: [
                                              Text("66 ",
                                              style: GoogleFonts.poppins(
                                                color: MyColors.rust,
                                                fontSize: 16.sp

                                              ),
                                              ),
                                              Positioned(
                                                right: 0,
                                                top: -3,
                                                child: Text("°",
                                                 style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                              fontSize: 15.sp
                                                ),
                                                ),
                                              )
                                              
                                            ],
                                          ),
                                    ],
                                  ),))
                        
                              ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
