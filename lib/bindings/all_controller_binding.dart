import 'package:druto_shop/core/authentication_manager.dart';

import 'package:druto_shop/pages/product_details_screen/controller/product_details_controller.dart';
import 'package:get/get.dart';

import '../apps/all_products_page/provider/all_products_controller.dart';
import '../apps/auth_page/provider/signin_controller.dart';
import '../apps/home_page/provider/home_page_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // ignore: todo
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<AuthenticationManager>(() => AuthenticationManager());
    Get.lazyPut<AllProductsController>(() => AllProductsController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<ProductDetailsController>(() => ProductDetailsController());
  }
}
