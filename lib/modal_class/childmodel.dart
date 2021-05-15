import 'dart:convert';

ChildModel childModelFromJson(String str) =>
    ChildModel.fromJson(json.decode(str));

List<ChildModel> childModelListFromJson(String str) => List<ChildModel>.from(
    json.decode(str)["data"].map((x) => ChildModel.fromJson(x)));

String childModelToJson(ChildModel data) => json.encode(data.toJson());

class ChildModel {
  ChildModel({this.email, this.name, this.pin, this.id});

  String email;
  String name;
  int pin;
  int id;

  factory ChildModel.fromJson(Map<String, dynamic> json) => ChildModel(
      email: json["email"],
      name: json["name"],
      pin: json["pin"],
      id: json["id"]);

  Map<String, dynamic> toJson() =>
      {"email": email, "name": name, "pin": pin, "child_id": id};
}
