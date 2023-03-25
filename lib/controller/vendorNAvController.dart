import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashkaar/page/vendorPage/vendorHome.dart';

class VendorNavController extends GetxController {
  int currentTab = 0;
  bool favoraite = false;
  Widget currentScreen = VendorHomePage();
  bool index = false;
}
