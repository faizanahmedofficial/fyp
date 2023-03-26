import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:kashkaar/Services/firestoreServices.dart';
import 'package:kashkaar/page/splashScreen.dart';
import 'package:kashkaar/page/vendorPage/mainPageVendor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(FirestoreServices());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        // debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        builder: EasyLoading.init(),
      );
    });
  }
}
