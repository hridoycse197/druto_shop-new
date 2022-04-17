import 'package:druto_shop/core/authentication_manager.dart';
import 'package:druto_shop/pages/all_products_page/controller/all_products_controller.dart';
import 'package:druto_shop/pages/home_page/controller/home_page_controller.dart';
import 'package:get/get.dart';

import '../pages/auth_pages/controller/signin_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // ignore: todo
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<AuthenticationManager>(() => AuthenticationManager());
    Get.lazyPut<AllProductsController>(() => AllProductsController());
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}
