// To parse this JSON data, do
//
//     final visitor = visitorFromJson(jsonString);

import 'dart:convert';

List<Visitor> visitorFromJson(String str) => List<Visitor>.from(json.decode(str).map((x) => Visitor.fromJson(x)));

String visitorToJson(List<Visitor> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Visitor {
  String visitorname;
  String purpose;
  String phno;

  Visitor({
    required this.visitorname,
    required this.purpose,
    required this.phno,
  });

  factory Visitor.fromJson(Map<String, dynamic> json) => Visitor(
    visitorname: json["visitorname"],
    purpose: json["purpose"],
    phno: json["phno"],
  );

  Map<String, dynamic> toJson() => {
    "visitorname": visitorname,
    "purpose": purpose,
    "phno": phno,
  };
}
