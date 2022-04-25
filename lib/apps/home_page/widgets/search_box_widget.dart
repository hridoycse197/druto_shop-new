import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

class SearchBoxWidget extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();
  SearchBoxWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0),
      child: Container(
        decoration: BoxDecoration(
            color: ColorResources.COLOR_WHITE,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: ColorResources.COLOR_BLACK.withOpacity(0.2),
                  blurRadius: 2,
                  offset: Offset(-1, 1))
            ],
            border: Border.all(color: ColorResources.COLOR_BLACK)),
        height: height * 0.07,
        child: Row(
          children: [
            //search icon
            Container(
              child: Icon(
                Icons.search,
                size: 52,
                color: ColorResources.COLOR_BLACK.withOpacity(0.7),
              ),
              height: height * 0.07,
              width: (width - 100) * 0.26,
              decoration: BoxDecoration(
                border: Border.all(color: ColorResources.COLOR_BLACK),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
            ),
            //searchbox
            SizedBox(
              width: width * 0.06,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 13),
              width: (width - 100) * 0.6,
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorResources.ON_BACKGROUND, width: 0.85)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorResources.ON_BACKGROUND, width: 0.85)),
                    hintText: 'Search here',
                    hintStyle: TextStyle(
                        color: ColorResources.THEME_APPBAR, fontSize: 14)),
              ),
            ),

            //cross button
            SizedBox(
              width: width * 0.03,
            ),
            Container(
              child: const Icon(
                Icons.close,
                color: ColorResources.SECONDARY_COLOR,
              ),
              height: height * 0.04,
              width: (width - 100) * 0.10,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
