import 'package:druto_shop/core/authentication_manager.dart';
import 'package:get/get.dart';

import '../pages/auth_pages/controller/signin_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<AuthenticationManager>(() => AuthenticationManager());
  }
}
