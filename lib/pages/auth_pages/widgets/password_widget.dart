import 'package:flutter/material.dart';

import '../../../shared/color_utils.dart';
import '../controller/sign_up_controller.dart';

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: controller.passvisibility ? false : true,
      validator: (value) {
        controller.validatepassword(value!);
      },
      onSaved: (value) {
        controller.password = value!;
      },
      keyboardType: TextInputType.number,
      controller: controller.passwordController,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: (() {
            controller.passvisibility = !controller.passvisibility;
          }),
          child: Icon(
            controller.passvisibility ? Icons.visibility : Icons.visibility_off,
            color: ColorUtil.maincolor,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorUtil.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorUtil.maincolor),
        ),
        contentPadding: EdgeInsets.only(top: 18),
        hintText: 'Password here',
        prefixIcon: Icon(
          Icons.person,
          size: 25,
          color: ColorUtil.maincolor,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorUtil.black, width: 4),
        ),
      ),
    );
  }
}
