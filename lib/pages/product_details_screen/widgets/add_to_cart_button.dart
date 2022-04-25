import 'package:flutter/material.dart';

import '../../../widgets/custom_text_widget.dart';
import '../../../shared/styles/colors.dart';

class AddToCartButton extends StatelessWidget {
  BoxConstraints constraints;
  AddToCartButton({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(ColorResources.APPBAR_TITLE_BG),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.5),
              side: BorderSide(width: 1, color: ColorResources.PRIMARY_COLOR)),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(constraints.maxWidth, 49),
        ),
      ),
      onPressed: () {},
      child: CustomTextWidgets(
          title: 'Add to Cart',
          fontsize: 24,
          fontweight: FontWeight.w700,
          fontcolor: ColorResources.PRIMARY_COLOR),
    );
  }
}
