// To parse this JSON data, do
//
//     final whitelist = whitelistFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Whitelist whitelistFromJson(String str) => Whitelist.fromJson(json.decode(str));

String whitelistToJson(Whitelist data) => json.encode(data.toJson());

class Whitelist {
  List<WhitelistElement> whitelist;

  Whitelist({
    required this.whitelist,
  });

  factory Whitelist.fromJson(Map<String, dynamic> json) => Whitelist(
    whitelist: List<WhitelistElement>.from(json["whitelist"].map((x) => WhitelistElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "whitelist": List<dynamic>.from(whitelist.map((x) => x.toJson())),
  };
}

class WhitelistElement {
  String name;
  List<String> subwhitelist;

  WhitelistElement({
    required this.name,
    required this.subwhitelist,
  });

  factory WhitelistElement.fromJson(Map<String, dynamic> json) => WhitelistElement(
    name: json["name"],
    subwhitelist: List<String>.from(json["subwhitelist"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "subwhitelist": List<dynamic>.from(subwhitelist.map((x) => x)),
  };
}
