import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/styles/colors.dart';

class customtextwidget extends StatelessWidget {
  customtextwidget({Key? key, required this.title, double fontsize = 25})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: double.infinity,
      child: Text(
        title,
        style: GoogleFonts.raleway(
            fontSize: 18,
            color: ColorResources.COLOR_BLACK,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
