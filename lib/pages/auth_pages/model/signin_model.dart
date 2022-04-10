// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.status,
    this.message,
    this.user,
    this.token,
  });

  bool? status;
  String? message;
  User? user;
  String? token;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        message: json["message"],
        user: User.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "user": user!.toJson(),
        "token": token,
      };
}

class User {
  User({
    this.id,
    this.fullName,
    this.userName,
    this.email,
    this.emailVerifiedAt,
    this.phone,
    this.photo,
    this.address,
    this.role,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? fullName;
  dynamic userName;
  String? email;
  dynamic emailVerifiedAt;
  dynamic phone;
  dynamic photo;
  dynamic address;
  String? role;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        fullName: json["full_name"],
        userName: json["user_name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        phone: json["phone"],
        photo: json["photo"],
        address: json["address"],
        role: json["role"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "user_name": userName,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "phone": phone,
        "photo": photo,
        "address": address,
        "role": role,
        "status": status,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
