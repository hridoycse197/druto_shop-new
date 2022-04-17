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
      padding: EdgeInsets.symmetric(horizontal: 22.0),
      child: Container(
        decoration: BoxDecoration(
            color: ColorResources.COLOR_WHITE,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: ColorResources.COLOR_BLACK.withOpacity(0.7),
                  blurRadius: 2,
                  offset: Offset(-1, 1))
            ]),
        height: height * 0.04,
        child: Row(
          children: [
            //search icon
            Container(
              child: const Icon(
                Icons.search,
                size: 35,
                color: ColorResources.COLOR_WHITE,
              ),
              height: height * 0.04,
              width: (width - 100) * 0.22,
              decoration: const BoxDecoration(
                color: ColorResources.SECONDARY_COLOR,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
            ),
            //searchbox
            SizedBox(
              width: width * 0.04,
            ),
            Container(
              width: (width - 100) * 0.56,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search show',
                    hintStyle: TextStyle(
                        color: ColorResources.SECONDARY_COLOR, fontSize: 14)),
              ),
            ),

            //cross button
            SizedBox(
              width: width * 0.07,
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
