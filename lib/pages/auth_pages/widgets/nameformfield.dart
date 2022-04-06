import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../../shared/color_utils.dart';
import '../controller/sign_up_controller.dart';

class NameTextFormFieldWidget extends GetView<SignUpController> {
  const NameTextFormFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => controller.validateName(value!),
      onSaved: (value) => controller.name = value!,
      keyboardType: TextInputType.number,
      controller: controller.nameController,
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorUtil.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorUtil.maincolor),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        contentPadding: EdgeInsets.only(top: 18),
        hintText: 'Write Name',
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
