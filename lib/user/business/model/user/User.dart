// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  int id;
  String name;
  String email;
  String phone;

  User({
    this.id=-1,
    this.name="",
    this.email="",
    this.phone="",
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] ?? -1,
    name: json["name"] ?? "",
    email: json["email"] ?? "",
    phone: json["telephone"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "telephone": phone,
  };
}
