import 'package:flutter/material.dart';

import '../../../widgets/custom_text_widget.dart';
import '../../../shared/styles/colors.dart';

class ProductNameAndRatingWidget extends StatelessWidget {
  const ProductNameAndRatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextWidgets(
            title: '5 Litre size oil',
            fontsize: 15,
            fontweight: FontWeight.w400,
            fontcolor: ColorResources.ON_BACKGROUND),
        Row(
          children: [
            const Icon(
              Icons.star,
              size: 16,
              color: ColorResources.PRIMARY_COLOR,
            ),
            CustomTextWidgets(
                title: '(4.5)',
                fontsize: 15,
                fontweight: FontWeight.w400,
                fontcolor: ColorResources.ON_BACKGROUND),
          ],
        )
      ],
    );
  }
}
