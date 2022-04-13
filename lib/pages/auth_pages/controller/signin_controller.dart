import 'package:druto_shop/core/authentication_manager.dart';
import 'package:druto_shop/pages/auth_pages/model/login_request_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../api_service/api_services.dart';

class LoginController extends GetxController {
  late final AuthenticationManager _authManager;
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

    _loginApiService = Get.put(LoginApiService());
    _authManager = Get.put(AuthenticationManager());
    emailController = TextEditingController();
    passwordController = TextEditingController();
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
      return 'password must be of 6 characters';
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

  Future<void> userLogin(String email, String password) async {
    final response = await _loginApiService.fetchLogin(
      LoginRequestModel(
        email: email,
        password: password,
      ),
    );

    if (response != null) {
      /// Set isLogin to true
      _authManager.login(response.token);
    } else {
      /// Show user a dialog about the error response
      Get.defaultDialog(
          middleText: 'User not found!',
          textConfirm: 'OK',
          confirmTextColor: Colors.white,
          onConfirm: () {
            Get.back();
          });
    }
  }

  checkValidator() async {
    if (loginFormKey.currentState!.validate()) {
      await userLogin(
        emailController.text,
        passwordController.text,
      );
    }
  }
}
