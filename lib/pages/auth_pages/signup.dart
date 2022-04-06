import 'package:druto_shop/pages/auth_pages/controller/sign_up_controller.dart';
import 'package:druto_shop/pages/auth_pages/widgets/emailformfield.dart';
import 'package:druto_shop/pages/auth_pages/widgets/nameformfield.dart';
import 'package:druto_shop/pages/auth_pages/widgets/password_widget.dart';
import 'package:druto_shop/pages/auth_pages/widgets/phonenumber_widget.dart';
import 'package:druto_shop/pages/auth_pages/widgets/repassword_widget.dart';
import 'package:druto_shop/routes/allcontrollerbinding.dart';
import 'package:druto_shop/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/color_utils.dart';
import '../../widgets/customappbar.dart';
import 'widgets/custom_text_form_field.dart';

class SignUp extends GetView<SignUpController> {
  SignUpController controller = Get.put(SignUpController());
  static const route = '/signup';
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorUtil.backgroundcolor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppbarWidget(title: 'Signup'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: SingleChildScrollView(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: controller.signupFormKey,
              child: Column(
                children: [
                  // Name Field
                  SizedBox(
                    height: height * 0.03,
                  ),

                  customtextwidget(title: 'Name'),

                  NameTextFormFieldWidget(),

                  // PhoneNumber Field
                  SizedBox(
                    height: height * 0.05,
                  ),
                  customtextwidget(title: 'Phone Number'),
                  PhoneNumberTextFormFieldWidget(controller: controller),

                  // Email Field
                  SizedBox(
                    height: height * 0.05,
                  ),
                  customtextwidget(title: 'Email'),
                  EmailTextFormFieldWidget(controller: controller),
                  // password
                  SizedBox(
                    height: height * 0.05,
                  ),
                  customtextwidget(title: 'Password'),
                  PasswordWidget(controller: controller),
                  // confirm password
                  SizedBox(
                    height: height * 0.05,
                  ),
                  customtextwidget(title: 'Confirm Password'),
                  RePasswordWidget(controller: controller),
                  // remember me text
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: CheckboxListTile(
                      value: true,
                      onChanged: (newvalue) {},
                      title: customtextwidget(title: 'Remember me'),
                      activeColor: ColorUtil.maincolor,
                      checkColor: ColorUtil.black,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  //sign up button
                  SizedBox(
                    height: height * 0.02,
                  ),

                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: height * 0.07,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                            side: BorderSide(color: ColorUtil.maincolor),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(ColorUtil.maincolor),
                      ),
                      onPressed: () {
                        controller.checkSignup();
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(fontSize: 35, color: ColorUtil.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
