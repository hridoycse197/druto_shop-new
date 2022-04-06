import 'package:flutter/material.dart';

import '../../../shared/color_utils.dart';
import '../controller/sign_up_controller.dart';

class EmailTextFormFieldWidget extends StatelessWidget {
  const EmailTextFormFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        controller.validateEmail(value!);
      },
      onSaved: (value) {
        controller.email = value!;
      },
      keyboardType: TextInputType.number,
      controller: controller.emailController,
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorUtil.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorUtil.maincolor),
        ),
        contentPadding: EdgeInsets.only(top: 18),
        hintText: 'Email',
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
