import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'apps/all_products_page/screens/all_products_view_page.dart';
import 'apps/auth_page/screens/login_page_view.dart';
import 'core/authentication_manager.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationManager _authManager = Get.find();

    return Obx(() {
      return _authManager.isLogged.value
          ? AllProdutsViewPage()
          : SignInPageView();
    });
  }
}
