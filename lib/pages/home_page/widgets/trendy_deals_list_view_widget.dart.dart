import 'package:druto_shop/pages/home_page/widgets/custom_text_widget.dart';
import 'package:druto_shop/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/home_page_controller.dart';

class TrendyDealsListViewWidget extends GetView<HomePageController> {
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
  TrendyDealsListViewWidget(
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
          height: 185,
          child: ListView.builder(
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
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          decoration: BoxDecoration(
            color: ColorResources.Trendy_item_bg,
          ),
          width: 245,
          height: 173,
          child: Row(
            children: [
              Container(
                width: 150,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: RichText(
                        text: TextSpan(
                            text: 'Super Flash Sale',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600, fontSize: 24),
                            children: [
                              TextSpan(
                                text: ' 50% off',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w300, fontSize: 24),
                              )
                            ]),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all(
                            Size(91, 27),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              ColorResources.COLOR_WHITE)),
                      onPressed: () {},
                      child: CustomTextWidgets(
                          title: 'See More',
                          fontsize: 15,
                          fontweight: FontWeight.w400,
                          fontcolor: ColorResources.COLOR_BLACK),
                    ),
                  ],
                ),
              ),
              RotationTransition(
                turns: AlwaysStoppedAnimation(25 / 360),
                child: Image(
                  width: 65,
                  height: 173,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    controller.allitem[index],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
