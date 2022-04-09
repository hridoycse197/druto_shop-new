import 'package:druto_shop/models/sign_up_model.dart';
import 'package:druto_shop/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  late TextEditingController nameController,
      phonenumberController,
      emailController,
      passwordController,
      confirmpasswordController;
  var name = '';
  var phonenumber = '';
  var email = '';
  var password;
  var confirmpassword;
  bool passvisibility = true;

  @override
  void onInit() {
    super.onInit();

    nameController = TextEditingController();
    phonenumberController = TextEditingController(text: '+880');
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmpasswordController = TextEditingController();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    nameController.dispose();
    phonenumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  String? validateName(String value) {
    if (value.length <= 2) {
      return "Provide valid name";
    }
  }

  String? validatephonenumber(String value) {
    if (!GetUtils.isPhoneNumber(value) || value.length <= 11.toInt()) {
      return "Provide valid phone number";
    }
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
  }

  String? validatepassword(String value) {
    bool passwordbool = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (value.length < 8) {
      return "Provide valid password";
      // } else if (value != confirmpassword) {
      //   return "Password dosent match";
      // }
    }
  }

  String? validaterepassword(String value) {
    bool passwordbool = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (value.length < 8) {
      return "Provide valid password";
      // } else if (value != password) {
      //   return "Password dosent match";
      // }
    }
  }

  void checkSignup() {
    final isValid = signupFormKey.currentState!.validate();
    if (isValid) {
      Get.to(Homepage());
    } else {
      print('this is error');
    }
  }

  //

  Future<SignUpModel?> createUser(String fullName, String email, int password,
      String passwordConfirmation) async {
    final String apiUrl = "https://script.drutosoft.com/grocery/api/register";
    final response = await http.post(Uri.parse(apiUrl), body: {
      "full_name": fullName,
      "email": email,
      "password": password,
      "password_confirmation": passwordConfirmation,
    });
    if (response.statusCode == 201) {
      final String responsString = response.body;
      return signUpModelFromJson(responsString);
    } else {
      return null;
    }
  }
}
