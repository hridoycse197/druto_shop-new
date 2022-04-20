import 'package:druto_shop/widgets/customappbar.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppbarWidget(title: 'Details')),
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
