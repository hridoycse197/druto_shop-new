import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home_page/screens/home_screen.dart';

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
      Get.to(HomeScreen());
    } else {
      print('this is error');
    }
  }

  //

}
