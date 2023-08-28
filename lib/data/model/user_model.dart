// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  User user;

  UserModel({
    required this.user,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
  };
}

class User {
  String name;
  String email;
  dynamic? phoneNumber;
  String language;
  String role;
  DateTime createdAt;
  DateTime updatedAt;
  String profilePhotoUrl;
  dynamic? userOperator;
  dynamic? administrator;
  dynamic? client;
  dynamic? driver;

  User({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.language,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
    required this.profilePhotoUrl,
    required this.userOperator,
    required this.administrator,
    required this.client,
    required this.driver,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json["name"],
    email: json["email"],
    phoneNumber: json["phone_number"],
    language: json["language"],
    role: json["role"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    profilePhotoUrl: json["profile_photo_url"],
    userOperator: json["operator"],
    administrator: json["administrator"],
    client: json["client"],
    driver: json["driver"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "phone_number": phoneNumber?? "Topilmadi",
    "language": language,
    "role": role,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "profile_photo_url": profilePhotoUrl,
    "operator": userOperator?? "yoq",
    "administrator": administrator ?? "yoq",
    "client": client ?? "yoq",
    "driver": driver ?? "yoq",
  };
}
