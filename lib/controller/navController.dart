import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashkaar/page/homePage.dart';
import 'package:kashkaar/page/selectRole.dart';

class NavController extends GetxController {
  int currentTab = 0;
  bool favoraite = false;
  Widget currentScreen = HomePage();
}