import 'package:druto_shop/shared/styles/colors.dart';
import 'package:druto_shop/shared/styles/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/product_model.dart';
import '../provider/all_products_controller.dart';

class ItemView extends GetView<AllProductsController> {
  final imagePath = 'assets/images/';
  final ProductModel products;
  ItemView(this.products);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Card(
      color: context.theme.cardColor,
      child: Padding(
        padding: const EdgeInsets.all(
          Dimensions.paddingSizeSmall,
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.19,
              child: Image.asset(
                imagePath + products.productImage, scale: 1,
                //height: height * 0.15,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  products.productName,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.fontSizeLarge,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$ ' + products.productPrice.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.fontSizeLarge,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: ColorResources.PRIMARY_COLOR,
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: height * 0.035,
                      width: width * 0.26,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.shopping_cart,
                          ),
                          Text('Add to Cart')
                        ],
                      ),
                      // decoration: BoxDecoration(
                      //   color: ColorResources.PRIMARY_COLOR,
                      //   borderRadius: BorderRadius.circular(20),
                      // ),
                    ),
                  ),
                ),
                Card(
                  color: ColorResources.PRIMARY_COLOR,
                  child: Container(
                    alignment: Alignment.center,
                    height: height * 0.035,
                    child: Icon(Icons.favorite),
                  ),
                  // decoration: BoxDecoration(
                  //   color: ColorResources.PRIMARY_COLOR,
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
