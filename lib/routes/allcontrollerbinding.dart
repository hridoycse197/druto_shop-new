import 'package:druto_shop/pages/auth_pages/controller/sign_up_controller.dart';
import 'package:get/instance_manager.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
