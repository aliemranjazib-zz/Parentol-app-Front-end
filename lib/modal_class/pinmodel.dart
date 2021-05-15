// To parse this JSON data, do
//
//     final pinModel = pinModelFromJson(jsonString);

import 'dart:convert';

PinModel pinModelFromJson(String str) => PinModel.fromJson(json.decode(str));

String pinModelToJson(PinModel data) => json.encode(data.toJson());

class PinModel {
    PinModel({
        this.email,
        this.pin,
    });

    String email;
    String pin;

    factory PinModel.fromJson(Map<String, dynamic> json) => PinModel(
        email: json["email"],
        pin: json["pin"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "pin": pin,
    };
}
