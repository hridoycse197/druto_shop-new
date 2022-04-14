import 'package:druto_shop/pages/all_products_page/all_products_view_page.dart';
import 'package:druto_shop/pages/auth_pages/login_page_view.dart';
import 'package:druto_shop/pages/home_page/home_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
