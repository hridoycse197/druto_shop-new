import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../../shared/styles/colors.dart';
import '../provider/sign_up_controller.dart';

class NameTextFormFieldWidget extends GetView<SignUpController> {
  const NameTextFormFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => controller.validateName(value!),
      onSaved: (value) => controller.name = value!,
      controller: controller.nameController,
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.COLOR_BLACK),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.PRIMARY_COLOR),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        contentPadding: EdgeInsets.only(top: 18),
        hintText: 'Write Name',
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
