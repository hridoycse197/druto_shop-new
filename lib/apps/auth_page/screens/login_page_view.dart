import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/authentication_manager.dart';
import '../../../shared/styles/colors.dart';
import '../provider/signin_controller.dart';

class SignInPageView extends GetView<LoginController> {
  final AuthenticationManager _authManager = Get.put(AuthenticationManager());
  bool checked = true;
  final imagePath = 'assets/images/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.BACKGROUND_COLOR,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorResources.BACKGROUND_COLOR,
        title: const Text(
          'Sign in Account',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: ColorResources.BUTTON_TEXT_COLOR,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: ColorResources.BUTTON_TEXT_COLOR,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: controller.loginFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imagePath + 'app_logo.png',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 07.0),
                      child: Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: ColorResources.BUTTON_TEXT_COLOR,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController,
                      onSaved: (value) {
                        controller.email = value!;
                      },
                      validator: (value) {
                        return controller.validateEmail(value!);
                      },
                      decoration: const InputDecoration(
                        hintText: "demo@gmail.com",
                        hintStyle: TextStyle(
                          color: ColorResources.BUTTON_TEXT_COLOR,
                          fontSize: 12,
                        ),
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.email,
                          color: ColorResources.PRIMARY_COLOR,
                          //size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 07.0),
                      child: Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: ColorResources.BUTTON_TEXT_COLOR,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Obx(
                      (() => TextFormField(
                            controller: controller.passwordController,
                            onSaved: (value) {
                              controller.password = value!;
                            },
                            validator: (value) {
                              return controller.validatePassword(value!);
                            },
                            obscureText: controller.isVisible.value,
                            decoration: InputDecoration(
                              hintText: "Type password",
                              hintStyle: const TextStyle(
                                color: ColorResources.BUTTON_TEXT_COLOR,
                                fontSize: 12,
                              ),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: ColorResources.PRIMARY_COLOR,
                                //size: 20,
                              ),
                              suffix: InkWell(
                                child: controller.isVisible.value
                                    ? const Icon(
                                        Icons.visibility_off,
                                      )
                                    : const Icon(Icons.visibility),
                                onTap: () {
                                  controller.isVisible.value =
                                      !controller.isVisible.value;
                                },
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Checkbox(
                        //   value: checked,
                        //   onChanged: (value) {},
                        // ),
                        // const Text(
                        //   'Remember me',
                        //   style: TextStyle(
                        //     fontSize: 20,
                        //     fontWeight: FontWeight.w400,
                        //     color: ColorResources.BUTTON_TEXT_COLOR,
                        //   ),
                        // ),
                        TextButton(
                          child: const Text(
                            'Forget password',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: ColorResources.BUTTON_TEXT_COLOR,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        primary: ColorResources.PRIMARY_COLOR,
                        minimumSize: const Size(double.infinity, 50.0),
                      ),
                      onPressed: () async {
                        controller.checkValidator();
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          color: ColorResources.BUTTON_TEXT_COLOR,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Or",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorResources.BUTTON_TEXT_COLOR,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'If you have no account?',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          ' SIGN UP',
                          style: TextStyle(
                            color: ColorResources.PRIMARY_COLOR,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
