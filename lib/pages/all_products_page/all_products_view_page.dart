import 'package:druto_shop/pages/all_products_page/controller/all_products_controller.dart';
import 'package:druto_shop/pages/all_products_page/model/product_model.dart';
import 'package:druto_shop/pages/all_products_page/widgets/item_vew.dart';
import 'package:druto_shop/shared/styles/dimensions.dart';
import 'package:druto_shop/widgets/app_bar_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllProdutsViewPage extends GetView<AllProductsController> {
  List<ProductModel> productsList = [
    ProductModel(
      productImage: '10.png',
      productName: 'productName',
      productPrice: 2.5,
      productDescription: 'productDescription',
      productRating: 35.5,
    ),
    ProductModel(
      productImage: '3.png',
      productName: 'productName',
      productPrice: 2.5,
      productDescription: 'productDescription',
      productRating: 35.5,
    ),
    ProductModel(
      productImage: '4.png',
      productName: 'productName',
      productPrice: 2.5,
      productDescription: 'productDescription',
      productRating: 35.5,
    ),
    ProductModel(
      productImage: '5.png',
      productName: 'productName',
      productPrice: 2.5,
      productDescription: 'productDescription',
      productRating: 35.5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text(
          'All Products',
          style: TextStyle(
            fontSize: Dimensions.fontSizeExtraLarge,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          GridView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeExtraSmall,
            ),
            itemCount: productsList.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //childAspectRatio: 1 / 1.35,
              childAspectRatio: 1 / 1.45,
            ),
            itemBuilder: (context, index) {
              return ItemView(productsList[index]);
            },
          )
        ],
      )),
    );
  }
}
