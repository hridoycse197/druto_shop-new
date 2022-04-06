import 'package:flutter/material.dart';

import '../../../shared/color_utils.dart';
import '../controller/sign_up_controller.dart';

class PhoneNumberTextFormFieldWidget extends StatelessWidget {
  const PhoneNumberTextFormFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        controller.validatephonenumber(value!);
      },
      onSaved: (value) {
        controller.phonenumber = value!;
      },
      keyboardType: TextInputType.number,
      controller: controller.phonenumberController,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorUtil.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorUtil.maincolor),
        ),
        contentPadding: EdgeInsets.only(top: 18),
        hintText: 'Phone Number',
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
