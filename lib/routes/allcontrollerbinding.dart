import 'package:druto_shop/pages/product_details_screen/controller/product_details_controller.dart';
import 'package:get/instance_manager.dart';

import '../apps/auth_page/provider/sign_up_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
    Get.lazyPut<ProductDetailsController>(() => ProductDetailsController());
  }
}
