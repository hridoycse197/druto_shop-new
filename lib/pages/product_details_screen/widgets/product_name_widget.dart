import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';
import '../../home_page/widgets/custom_text_widget.dart';

class ProductNameWidget extends StatelessWidget {
  const ProductNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextWidgets(
            title: 'Oils and Ghee',
            fontsize: 20,
            fontweight: FontWeight.w500,
            fontcolor: ColorResources.ON_BACKGROUND),
        Container(
          alignment: Alignment.center,
          height: 25,
          width: 150,
          decoration: BoxDecoration(
            color: ColorResources.PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(20),
          ),
          child: CustomTextWidgets(
              title: '\$520.00',
              fontsize: 17,
              fontweight: FontWeight.w600,
              fontcolor: ColorResources.ON_BACKGROUND),
        ),
      ],
    );
  }
}
