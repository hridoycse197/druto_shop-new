import 'dart:ffi';

import 'package:druto_shop/pages/auth_pages/model/signin_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../api_service/api_services.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  var isVisible = true.obs;
  late final LoginApiService _loginApiService;

  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    _loginApiService = Get.put(LoginApiService());
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Please provide a valid email';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return 'password must be of 6 charactars';
    }
    return null;
  }

  checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }

  Future<void> userLogin(String email) async {
    await _loginApiService.fetchLogin(LoginModel());
  }
}
