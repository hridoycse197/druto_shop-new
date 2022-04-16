import 'package:druto_shop/models/sign_up_model.dart';
import 'package:druto_shop/pages/auth_pages/controller/sign_up_controller.dart';
import 'package:druto_shop/pages/auth_pages/widgets/emailformfield.dart';
import 'package:druto_shop/pages/auth_pages/widgets/nameformfield.dart';
import 'package:druto_shop/pages/auth_pages/widgets/password_widget.dart';
import 'package:druto_shop/pages/auth_pages/widgets/phonenumber_widget.dart';
import 'package:druto_shop/pages/auth_pages/widgets/repassword_widget.dart';

import 'package:druto_shop/services/signupservices.dart';
import 'package:druto_shop/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/styles/colors.dart';
import '../../widgets/customappbar.dart';
import 'widgets/custom_text_form_field.dart';

class SignUp extends GetView<SignUpController> {
  static const route = '/signup';
  SignUp({Key? key}) : super(key: key);
  SignUpModel? sign;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorResources.BACKGROUND_COLOR,
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

                  CustomTextWidget(title: 'Name'),

                  const NameTextFormFieldWidget(),

                  // PhoneNumber Field
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextWidget(title: 'Phone Number'),
                  PhoneNumberTextFormFieldWidget(),

                  // Email Field
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextWidget(title: 'Email'),
                  EmailTextFormFieldWidget(),
                  // password
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextWidget(title: 'Password'),
                  PasswordWidget(),
                  // confirm password
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextWidget(title: 'Confirm Password'),
                  RePasswordWidget(),
                  // remember me text
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: CheckboxListTile(
                      value: true,
                      onChanged: (newvalue) {},
                      title: CustomTextWidget(title: 'Remember me'),
                      activeColor: ColorResources.PRIMARY_COLOR,
                      checkColor: ColorResources.COLOR_BLACK,
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
                            side:
                                BorderSide(color: ColorResources.PRIMARY_COLOR),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            ColorResources.PRIMARY_COLOR),
                      ),
                      onPressed: () async {
                        controller.checkSignup();

                        await SignUpServices().createUser(
                            controller.name,
                            controller.email,
                            controller.password,
                            controller.confirmpassword);
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(
                            fontSize: 35, color: ColorResources.COLOR_BLACK),
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
