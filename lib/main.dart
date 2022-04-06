import 'package:druto_shop/pages/auth_pages/signup.dart';
import 'package:druto_shop/routes/allcontrollerbinding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  AllControllerBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBinding(),
      title: 'Druto App',
      home: SignUp(),
    );
  }
}
