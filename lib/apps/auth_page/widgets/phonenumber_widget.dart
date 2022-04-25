import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../../shared/styles/colors.dart';
import '../provider/sign_up_controller.dart';

class PhoneNumberTextFormFieldWidget extends GetView<SignUpController> {
  const PhoneNumberTextFormFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => controller.validatephonenumber(value!),
      onSaved: (value) => controller.phonenumber = value!,
      keyboardType: TextInputType.number,
      controller: controller.phonenumberController,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.COLOR_BLACK),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.PRIMARY_COLOR),
        ),
        contentPadding: EdgeInsets.only(top: 18),
        hintText: 'Phone Number',
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
