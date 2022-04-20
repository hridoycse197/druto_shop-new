import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/styles/colors.dart';

class CustomTextWidgets extends StatelessWidget {
  double fontsize;
  FontWeight fontweight;
  Color fontcolor;
  TextAlign textAlign;
  TextDecoration textDecoration;
  CustomTextWidgets(
      {Key? key,
      required this.title,
      this.textDecoration = TextDecoration.none,
      required this.fontsize,
      required this.fontweight,
      required this.fontcolor,
      this.textAlign = TextAlign.left})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: GoogleFonts.roboto(
          decoration: textDecoration,
          color: fontcolor,
          fontSize: fontsize,
          fontWeight: fontweight),
    );
  }
}
