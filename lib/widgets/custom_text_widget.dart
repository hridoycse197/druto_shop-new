import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/styles/colors.dart';

class CustomTextWidget extends StatelessWidget {
  CustomTextWidget({Key? key, required this.title, double fontsize = 25})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorResources.APPBAR_TITLE_BG,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '  ' + title + '  ',
        style: GoogleFonts.raleway(
            fontSize: 12,
            color: ColorResources.COLOR_BLACK,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
