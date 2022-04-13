import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/styles/colors.dart';
import '../controller/sign_up_controller.dart';

class EmailTextFormFieldWidget extends GetView<SignUpController> {
  const EmailTextFormFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => controller.validateEmail(value!),
      onSaved: (value) => controller.email = value!,
      keyboardType: TextInputType.emailAddress,
      controller: controller.emailController,
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.Black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.PRIMARY_COLOR),
        ),
        contentPadding: EdgeInsets.only(top: 18),
        hintText: 'Email',
        prefixIcon: Icon(
          Icons.person,
          size: 25,
          color: ColorResources.PRIMARY_COLOR,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.Black, width: 4),
        ),
      ),
    );
  }
}
