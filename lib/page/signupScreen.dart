
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:kashkaar/widgets/checkBox.dart';
import 'package:kashkaar/widgets/customButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool shouldCheck =false;
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
          child: Image.asset("assets/images/bg.png", fit: BoxFit.fill,)),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset("assets/icons/logo.png",height: 26.h,)),
                    Text("Mobile Number",
                    style: GoogleFonts.poppins(
                      color: MyColors.primary2,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600
                    ),
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
                          borderSide: BorderSide(
                            color: MyColors.primary2
                          ),
                          
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: MyColors.primary2
                          ),
                          
                        ),
                        contentPadding: EdgeInsets.all(12),
                        prefixIcon: Row(
                          children: [
                            Spacer(),
                            Text("+ 92",
                            style: GoogleFonts.poppins(
                              color: MyColors.primary,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                            Spacer(),
                            VerticalDivider(
                              thickness: 1.5,
                              color: MyColors.primary,
                            )
                          ],
                        ),
                        prefixIconConstraints: BoxConstraints(
                          maxWidth: 15.w,maxHeight: 4.h
                        )
                      ),
                    ),
                    SizedBox(height: 3.h),
                     Text("CNIC",
                    style: GoogleFonts.poppins(
                      color: MyColors.primary2,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600
                    ),
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
                          borderSide: BorderSide(
                            color: MyColors.primary2
                          ),
                          
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: MyColors.primary2
                          ),
                          
                        ),
                        contentPadding: EdgeInsets.all(12),
                  
                      ),
                    ),
                    SizedBox(height: 3.h),
                     Text("Password",
                    style: GoogleFonts.poppins(
                      color: MyColors.primary2,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600
                    ),
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
                          borderSide: BorderSide(
                            color: MyColors.primary2
                          ),
                          
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: MyColors.primary2
                          ),
                          
                        ),
                        contentPadding: EdgeInsets.all(12),
                    suffixIcon: Image.asset("assets/icons/Eye.png"),
                    suffixIconConstraints: BoxConstraints()
                      ),
                    ),
                    SizedBox(height: 2.h),
                  
                     SizedBox(height: 7.h),
                     customButton("Sign Up",background: MyColors.primary2)

                         
                              
                 
                        
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}