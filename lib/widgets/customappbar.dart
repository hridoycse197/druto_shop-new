import 'package:flutter/material.dart';

import 'custom_text_widget.dart';
import '../shared/styles/colors.dart';

class CustomAppbarWidget extends StatelessWidget {
  String title;
  CustomAppbarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: CustomTextWidget(title: title),
      leading: Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: ColorResources.COLOR_BLACK,
            borderRadius: BorderRadius.all(Radius.circular(17))),
        child: Icon(Icons.arrow_back,
            size: 28, color: ColorResources.PRIMARY_COLOR),
      ),
      actions: [Icon(Icons.more_vert)],
    );
  }
}
