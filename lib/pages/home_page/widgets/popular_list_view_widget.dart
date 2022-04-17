import 'package:druto_shop/pages/home_page/controller/home_page_controller.dart';
import 'package:druto_shop/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularListViewBuilderWidget extends GetView<HomePageController> {
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
  PopularListViewBuilderWidget(
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
          height: 150,
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 145,
            width: 146,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    width: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(controller.allitem[index]),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Meat',
                  style: GoogleFonts.roboto(
                      color: ColorResources.COLOR_BLACK,
                      fontWeight: FontWeight.w500,
                      fontSize: 27),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: ColorResources.BACKGROUND_COLOR,
              boxShadow: [
                BoxShadow(
                  color: ColorResources.COLOR_BLACK.withOpacity(0.5),
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(1, 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
