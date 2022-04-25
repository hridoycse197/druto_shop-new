import 'package:druto_shop/pages/product_details_screen/widgets/add_to_cart_button.dart';
import 'package:druto_shop/pages/product_details_screen/widgets/buy_button.dart';
import 'package:druto_shop/pages/product_details_screen/widgets/product_name_widget.dart';
import 'package:druto_shop/shared/styles/colors.dart';
import 'package:druto_shop/widgets/custom_text_widget.dart';
import 'package:druto_shop/widgets/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/state_manager.dart';

import '../../widgets/custom_text_widget.dart';
import 'controller/product_details_controller.dart';
import 'widgets/order_quantity_widget.dart';
import 'widgets/product_name_and_rating_widget.dart';

class ProductDetailsScreen extends GetView<ProductDetailsController> {
  ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: CustomAppbarWidget(title: 'Details')),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                //top image container
                child: Container(
                  height: constraints.maxHeight,
                  width: width - 25,
                  decoration: const BoxDecoration(
                    color: ColorResources.SCAFFOLD,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //description text container
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 100, bottom: 50),
                          height: 223,
                          width: 354,
                          child: Image.asset(
                            'assets/images/8.png',
                            fit: BoxFit.fill,
                            height: 223,
                            width: 354,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          width: width - 25,
                          height: height * .75,
                          decoration: const BoxDecoration(
                            color: ColorResources.BACKGROUND_COLOR,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const ProductNameAndRatingWidget(),
                              const SizedBox(
                                height: 38,
                              ),
                              const ProductNameWidget(),
                              const SizedBox(
                                height: 38,
                              ),
                              OrderQuantityWidget(controller: controller),
                              const SizedBox(
                                height: 38,
                              ),
                              BuyButtonWidget(
                                constraints: constraints,
                              ),
                              const SizedBox(
                                height: 33,
                              ),
                              AddToCartButton(constraints: constraints),
                              const SizedBox(
                                height: 33,
                              ),
                              CustomTextWidgets(
                                  title: 'Claim your 3% Discount',
                                  fontsize: 20,
                                  fontweight: FontWeight.w600,
                                  fontcolor: ColorResources.COLOR_BLACK),
                              const SizedBox(
                                height: 33,
                              ),
                              Container(
                                height: 30,
                                width: constraints.maxWidth,
                                child: CustomTextWidgets(
                                    title: 'Description:',
                                    fontsize: 25,
                                    fontweight: FontWeight.w600,
                                    fontcolor: ColorResources.COLOR_BLACK),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 120,
                                width: constraints.maxWidth,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 23.0),
                                      child: CustomTextWidgets(
                                          overflow: TextOverflow.visible,
                                          title:
                                              '  “ In literary theory, a text is any object that can be "read", whether this object is a work of literature, a street sign, an arrangement of buildings on a city.',
                                          fontsize: 20,
                                          fontweight: FontWeight.w400,
                                          textAlign: TextAlign.start,
                                          fontcolor:
                                              ColorResources.COLOR_BLACK),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
