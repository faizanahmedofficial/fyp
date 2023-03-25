import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kashkaar/config/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class DropDown22 extends StatefulWidget {
  const DropDown22( {super.key, });

  @override
  State<DropDown22> createState() => _DropDown22State();
}

class _DropDown22State extends State<DropDown22> {

  final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
  'Item5',
  'Item6',
  'Item7',
  'Item8',
];


String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          
          hint: Row(
            children:  [
             
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Text(
                  "Area of Land",
                  style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                          ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
                  .map((item) =>
                  DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style:  GoogleFonts.poppins(
                        fontSize: 14.sp,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
                  .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon:  Transform.rotate(
            angle: pi/2,
            child: Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
          iconSize: 14,
          iconEnabledColor: Colors.black,
          iconDisabledColor: Colors.grey,
          buttonHeight: 50,
          buttonWidth: 100.w,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.black26,
            ),
            color: MyColors.rust,
          ),
          buttonElevation: 2,
          itemHeight: 40,
          dropdownDirection: DropdownDirection.values[2],

          // itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 83.w,
          
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: MyColors.primary,
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      );
    
  }
}