// To parse this JSON data, do
//
//     final signUpModel = signUpModelFromJson(jsonString);

import 'dart:convert';

SignUpModel signUpModelFromJson(String str) =>
    SignUpModel.fromJson(json.decode(str));

String signUpModelToJson(SignUpModel data) => json.encode(data.toJson());

class SignUpModel {
  SignUpModel({
    required this.fullName,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
  });

  String fullName;
  String email;
  int password;
  String passwordConfirmation;

  factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
        fullName: json["full_name"],
        email: json["email"],
        password: json["password"],
        passwordConfirmation: json["password_confirmation"],
      );

  Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "email": email,
        "password": password,
        "password_confirmation": passwordConfirmation,
      };
}
