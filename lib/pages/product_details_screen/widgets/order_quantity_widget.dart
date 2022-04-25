import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_text_widget.dart';
import '../../../shared/styles/colors.dart';
import '../controller/product_details_controller.dart';

class OrderQuantityWidget extends StatelessWidget {
  const OrderQuantityWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ProductDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextWidgets(
            title: 'Fortified Soyabean Oil',
            fontsize: 15,
            fontweight: FontWeight.w600,
            fontcolor: ColorResources.ON_BACKGROUND),
        Container(
            alignment: Alignment.center,
            height: 35,
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (() {
                    if (controller.quantityCounter > 0) {
                      controller.quantityCounter--;
                    }
                  }),
                  child: Container(
                    height: 35,
                    width: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        color: ColorResources.PRIMARY_COLOR),
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Obx(
                      () => CustomTextWidgets(
                          title: controller.quantityCounter.toString(),
                          fontsize: 15,
                          fontweight: FontWeight.w600,
                          fontcolor: ColorResources.COLOR_BLACK),
                    ),
                    CustomTextWidgets(
                        title: 'in bag',
                        fontsize: 10,
                        fontweight: FontWeight.w600,
                        fontcolor: ColorResources.COLOR_BLACK),
                  ],
                ),
                GestureDetector(
                  onTap: (() {
                    controller.quantityCounter++;
                  }),
                  child: Container(
                    height: 35,
                    width: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: ColorResources.PRIMARY_COLOR),
                    child: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
