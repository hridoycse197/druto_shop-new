import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../shared/styles/colors.dart';
import '../controller/sign_up_controller.dart';

class RePasswordWidget extends GetView<SignUpController> {
  const RePasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => controller.validaterepassword(value!),
      onSaved: (value) => controller.confirmpassword = value!,
      keyboardType: TextInputType.number,
      controller: controller.confirmpasswordController,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () => controller.passvisibility = !controller.passvisibility!,
          child: Icon(
            controller.passvisibility!
                ? Icons.visibility
                : Icons.visibility_off,
            color: ColorResources.PRIMARY_COLOR,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.COLOR_BLACK),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.PRIMARY_COLOR),
        ),
        contentPadding: EdgeInsets.only(top: 18),
        hintText: 'Confirm password',
        prefixIcon: const Icon(
          Icons.person,
          size: 25,
          color: ColorResources.PRIMARY_COLOR,
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: ColorResources.COLOR_BLACK, width: 4),
        ),
      ),
    );
  }
}
