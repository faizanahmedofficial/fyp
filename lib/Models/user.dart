class UserModel {
  String id = "";
  String image = '';
  String desc = '';
  String age = '';

  String name = '';
  UserModel();
  UserModel.toModel(Map<String, dynamic> jsonMap) {
    id = jsonMap['id'] ?? "";
    name = jsonMap['name'] ?? '';
    image = jsonMap['image'] ?? "";
    desc = jsonMap['desc'] ?? "";

    age = jsonMap['age'] ?? "";
  }
  Map<String, dynamic> toRegisterJSON() {
    Map<String, dynamic> jsonMap = <String, dynamic>{};
    jsonMap['id'] = id;
    jsonMap['image'] = image;
    jsonMap['desc'] = desc;
    jsonMap['name'] = name;
    jsonMap['age'] = age;

    return jsonMap;
  }

  Map<String, dynamic> toUpdateJSON() {
    Map<String, dynamic> jsonMap = <String, dynamic>{};

    return jsonMap;
  }
}
