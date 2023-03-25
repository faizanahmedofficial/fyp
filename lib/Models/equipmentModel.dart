class EquipmentModel {
  String id = "";
  DateTime postDate = DateTime(1000);
  String image = '';
  String desc = '';
  String area = '';
  String quantity = '';
  String price = '';
  String season = '';
  String name = '';
  EquipmentModel();
  EquipmentModel.toModel(Map<String, dynamic> jsonMap) {
    id = jsonMap['id'] ?? "";
    season = jsonMap['season'] ?? '';
    name = jsonMap['name'] ?? '';
    image = jsonMap['image'] ?? "";
    desc = jsonMap['desc'] ?? "";

    area = jsonMap['area'] ?? "";
    price = jsonMap['price'] ?? "";
    quantity = jsonMap['quantity'] ?? "";

    postDate = jsonMap['postDate'].toDate();
  }
  Map<String, dynamic> toRegisterJSON() {
    Map<String, dynamic> jsonMap = <String, dynamic>{};
    jsonMap['id'] = id;
    jsonMap['image'] = image;
    jsonMap['desc'] = desc;
    jsonMap['season'] = season;
    jsonMap['name'] = name;
    jsonMap['area'] = area;
    jsonMap['quantity'] = quantity;
    jsonMap['price'] = price;
    postDate = DateTime.now();
    jsonMap["postDate"] = postDate;
    return jsonMap;
  }
  Map<String, dynamic> toUpdateJSON() {
    Map<String, dynamic> jsonMap = <String, dynamic>{};
   
    return jsonMap;
  }
}
