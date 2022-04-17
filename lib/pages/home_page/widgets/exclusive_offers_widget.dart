import 'package:druto_shop/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/home_page_controller.dart';

class ExclusiveOffersWidget extends GetView<HomePageController> {
  static var categoryname = [
    'Vegetables and fruits',
    'Oils and Ghee',
    'Meet,Fish and Egg',
    'Beverages',
    'Vegetables and fruits',
    'Oils and Ghee',
    'Meet,Fish and Egg',
    'Beverages',
    'Vegetables and fruits',
    'Oils and Ghee',
    'Meet,Fish and Egg',
    'Beverages',
  ];
  String title;
  VoidCallback onarrowtapfunction;
  ExclusiveOffersWidget(
      {Key? key, required this.title, required this.onarrowtapfunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(
                  color: ColorResources.COLOR_BLACK,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'see all',
                  style: GoogleFonts.roboto(
                      color: ColorResources.COLOR_BLACK,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                IconButton(
                  onPressed: onarrowtapfunction,
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 33,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 110,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 7,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: controller.allitem.length,
            itemBuilder: (BuildContext context, int index) {
              return ListViewItem(
                categoryname: categoryname,
                index: index,
              );
            },
          ),
        ),
      ],
    );
  }
}

class ListViewItem extends GetView<HomePageController> {
  int index;
  ListViewItem({
    Key? key,
    required this.index,
    required this.categoryname,
  }) : super(key: key);

  final List<String> categoryname;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            Container(
              width: 216,
              height: 100,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    alignment: Alignment.topLeft,
                    width: 80,
                    child: Column(
                      children: [
                        Text('Cleanrs',
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: ColorResources.COLOR_BLACK)),
                        Text('Up to 50% Off',
                            style: GoogleFonts.roboto(
                              color: ColorResources.COLOR_BLACK,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 88,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(controller.allitem[index]),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: ColorResources.COLOR_BLACK,
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(-2, 2))
                ],
                color: ColorResources.COLOR_WHITE,
                borderRadius: BorderRadius.all(
                  Radius.circular(11),
                ),
              ),
            ),
          ],
        ));
  }
}
