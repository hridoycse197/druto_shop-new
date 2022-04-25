import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../../shared/styles/colors.dart';
import '../provider/sign_up_controller.dart';

class PasswordWidget extends GetView<SignUpController> {
  const PasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: controller.passvisibility ? false : true,
      validator: (value) => controller.validatepassword(value!),
      onSaved: (value) => controller.password = value!,
      controller: controller.passwordController,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: (() {
            controller.passvisibility = !controller.passvisibility;
          }),
          child: Icon(
            controller.passvisibility ? Icons.visibility : Icons.visibility_off,
            color: ColorResources.PRIMARY_COLOR,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.COLOR_BLACK),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.PRIMARY_COLOR),
        ),
        contentPadding: EdgeInsets.only(top: 18),
        hintText: 'Password here',
        prefixIcon: Icon(
          Icons.person,
          size: 25,
          color: ColorResources.PRIMARY_COLOR,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.COLOR_BLACK, width: 4),
        ),
      ),
    );
  }
}
