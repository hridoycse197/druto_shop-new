import 'package:druto_shop/core/authentication_manager.dart';
import 'package:druto_shop/shared/styles/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AuthenticationManager _authManager = Get.find();
  Widget title;

  CustomAppBar({required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: true,
      actions: [
        Icon(
          Icons.notifications_active,
          size: Dimensions.iconSized,
        ),
        SizedBox(
          width: 7,
        ),
        IconButton(
          onPressed: () {
            _authManager.logOut();
          },
          icon: const Icon(Icons.logout_rounded),
        ),
        SizedBox(
          width: 7,
        ),
      ],
    );
  }
}
