import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashkaar/Models/equipmentModel.dart';
import 'package:kashkaar/Services/firestoreServices.dart';

class AddController extends GetxController {
  List<EquipmentModel> equipments = [];
  AddController() {
    getPost();
  }
  getPost() async {
    equipments = await Get.find<FirestoreServices>().geteqps();
    update();
  }
  TextEditingController pname = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController sesason = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController desc = TextEditingController();
  EquipmentModel eqp = EquipmentModel();
  set() async {
    // eqp.area = area.text;
    eqp.name = pname.text;
    eqp.quantity = quantity.text;
    // eqp.season = sesason.text;
    eqp.price = price.text;
    eqp.desc = desc.text;
    await Get.find<FirestoreServices>().setEquipment(eqp);
  }
  
}
