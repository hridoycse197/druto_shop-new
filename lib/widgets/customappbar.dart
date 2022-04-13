import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_text_widget.dart';
import '../shared/styles/colors.dart';

class CustomAppbarWidget extends StatelessWidget {
  String title;
  CustomAppbarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: 0,
      title: customtextwidget(title: title),
      leading: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: ColorResources.BACKGROUND_COLOR,
            borderRadius: BorderRadius.all(Radius.circular(22))),
        child:
            Icon(Icons.arrow_back, size: 31, color: ColorResources.COLOR_WHITE),
      ),
    );
  }
}
