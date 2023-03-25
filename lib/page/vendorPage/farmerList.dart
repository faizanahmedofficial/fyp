import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/widgets/onTapCustom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class FarmerLists extends StatelessWidget {
  const FarmerLists({super.key});

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
                      Center(child: Text("Farmer Lists",
                      style: GoogleFonts.poppins(
                        color: MyColors.primary2,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      )),
                      Container(
                        height: 85.h,
                        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.8,
          mainAxisSpacing: 40.0,
          shrinkWrap: true,
          children: List.generate(20, (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.rust,
                    borderRadius:
                    BorderRadius.all(Radius.circular(30.0),),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      CircleAvatar(
                        radius: 4.4.h,
                        backgroundImage: AssetImage("assets/images/g2.png"),
                      ),
                      SizedBox(height: 8),
                      Text("Anesha Khan",
                      style: GoogleFonts.poppins(
                        color: MyColors.primary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      Text("Age : 19",
                      style: GoogleFonts.poppins(
                        color: MyColors.primary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      SizedBox(height: 2.h),
                     Row(
                       children: [
                        Spacer(),
                         onPress(
                          ontap: (){
                           showDialog(context: context, builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
                            backgroundColor: MyColors.rust,
              title: Center(
                child: Text('Are you sure?',
                  style: GoogleFonts.poppins(
                          color: MyColors.primary,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700
                        ),
                ),
              ),           // To display the title it is optional
                actions: [
              
                   Row(
                     children: [
                      Spacer(),
                       Container(
                        width: 18.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: MyColors.primary,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(child: Text("Yes",
                        style: GoogleFonts.poppins(
                              color: MyColors.rust,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500
                            ),
                        )),
                  ),
                  SizedBox(width: 4.w),
                   Container(
                    width: 18.w,
                    height: 4.h,
                   decoration: BoxDecoration(
                      color: MyColors.red,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(child: Text("Yes",
                    style: GoogleFonts.poppins(
                          color: MyColors.rust,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500
                        ),
                    )),
                  ),
                      Spacer(),

                     ],
                   ),
                     
                  // SizedBox(width: 3.w),
                // FlatButton(                     // FlatButton widget is used to make a text to work like a button
                //   textColor: Colors.black,
                //   onPressed: () {},             // function used to perform after pressing the button
                //   child: Text('CANCEL'),
                // ),
                // FlatButton(
                //   textColor: Colors.black,
                //   onPressed: () {},
                //   child: Text('ACCEPT'),
                // ),
              ],
            ) );
                          },
                          child: Image.asset("assets/icons/bin.png",height: 2.4.h)),
                         SizedBox(width: 4.w),
                         Image.asset("assets/icons/ref.png",height: 2.4.h),
                        Spacer(),

                       ],
                     ),
                     

                    ],
                  ),
                ),
              );
            },)),
                      ),
                    ],
                  ),
                ))
            ),
          ],
        ),
    );
  }
}