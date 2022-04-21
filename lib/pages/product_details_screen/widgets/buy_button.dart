import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';
import '../../home_page/widgets/custom_text_widget.dart';

class BuyButtonWidget extends StatelessWidget {
  BoxConstraints constraints;
  BuyButtonWidget({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.5),
            ),
          ),
          minimumSize: MaterialStateProperty.all(
            Size(constraints.maxWidth, 49),
          ),
        ),
        onPressed: () {},
        child: CustomTextWidgets(
            title: 'Buy It Now',
            fontsize: 24,
            fontweight: FontWeight.w700,
            fontcolor: ColorResources.COLOR_BLACK));
  }
}
