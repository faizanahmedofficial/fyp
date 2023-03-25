import 'package:flutter/material.dart';
Widget  onPress({Function? ontap,Widget? child }){
  return InkWell(
    splashColor: Colors.transparent,
    focusColor: Colors.transparent,
    highlightColor: Colors.transparent,

    onTap: (){
    if (ontap != null) {
        ontap();
      }
      
    },
    child: child,
    
  );
}