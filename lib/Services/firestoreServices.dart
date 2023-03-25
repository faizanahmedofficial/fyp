import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:kashkaar/Models/equipmentModel.dart';

class FirestoreServices {
  final FirebaseFirestore _instance = FirebaseFirestore.instance;

  Future<EquipmentModel?> setEquipment(EquipmentModel pl) async {
    EasyLoading.show();
    try {
      pl.id = _instance.collection('equipments').doc().id;
      await _instance
          .collection('equipments')
          .doc(pl.id)
          .set(pl.toRegisterJSON());
      EasyLoading.dismiss();
      return pl;
    } catch (e) {
      EasyLoading.dismiss();
      // popUp(context, MyPopUps.info, e.toString(), "Dismiss", () {});
      return null;
    }
  }

  Future<bool> deletePlaylist(String commentId) async {
    try {
      await _instance.collection('equipments').doc(commentId).delete();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<EquipmentModel>> geteqps() async {
    try {
      QuerySnapshot<Map<String, dynamic>> dsnap =
          await _instance.collection('equipments').get();
      List<EquipmentModel> comments = [];
      for (QueryDocumentSnapshot<Map<String, dynamic>> item in dsnap.docs) {
        if (item.exists) {
          EquipmentModel comment = EquipmentModel.toModel(item.data());
          // comment.user = await getUser(comment.userId);
          comments.add(comment);
        }
      }
      return comments;
    } catch (e) {
      print(e);
      // popUp(context, MyPopUps.info, e.toString(), "Dismiss", () {});
      return [];
    }
  }

  Future<EquipmentModel> getPost(String userId) async {
    EquipmentModel user = EquipmentModel();
    List<EquipmentModel> equipmentList = [];
    List<EquipmentModel> temp =
        equipmentList.where((element) => element.id == userId).toList();
    if (temp.isEmpty) {
      try {
        DocumentSnapshot dsnap =
            await _instance.collection('equipments').doc(userId).get();
        if (dsnap.exists) {
          user = EquipmentModel.toModel(dsnap.data() as Map<String, dynamic>);
          equipmentList.add(user);
        }
      } catch (e) {
        // if (context != null)
        //   popUp(context, MyPopUps.info, e.toString(), "Dismiss", () {});
      }
    } else {
      user = temp.first;
    }
    return user;
  }
}
