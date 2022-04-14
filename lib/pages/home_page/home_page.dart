import 'package:druto_shop/core/authentication_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthenticationManager _authManager = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              _authManager.logOut();
            },
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: const Center(
        child: Text('HOME VIEW'),
      ),
    );
  }
}
