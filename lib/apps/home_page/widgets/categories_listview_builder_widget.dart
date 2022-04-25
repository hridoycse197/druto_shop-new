import 'package:druto_shop/apps/home_page/provider/home_page_controller.dart';
import 'package:druto_shop/widgets/custom_text_widget.dart';

import 'package:druto_shop/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/custom_text_widget.dart';

class CategoryListViewBuilderWidget extends GetView<HomePageController> {
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
  CategoryListViewBuilderWidget(
      {Key? key, required this.title, required this.onarrowtapfunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextWidgets(
                title: title,
                fontcolor: ColorResources.COLOR_BLACK,
                fontsize: 24,
                fontweight: FontWeight.w700,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextWidgets(
                    title: 'see all',
                    fontcolor: ColorResources.COLOR_BLACK,
                    fontsize: 18,
                    fontweight: FontWeight.w400,
                  ),
                  IconButton(
                    onPressed: onarrowtapfunction,
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 33,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 140,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: 14,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: categoryname.length,
              itemBuilder: (BuildContext context, int index) {
                return ListViewItem(
                  categoryname: categoryname,
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
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
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          child: Image.asset(controller.allitem[index]),
          height: 75.67,
          width: 75.66,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: ColorResources.ON_SECONDARY,
              boxShadow: [
                BoxShadow(
                  color: ColorResources.COLOR_BLACK.withOpacity(0.2),
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(1, 2),
                )
              ]),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            width: 76,
            child: CustomTextWidgets(
              textAlign: TextAlign.center,
              title: categoryname[index],
              fontsize: 14,
              fontweight: FontWeight.w500,
              fontcolor: ColorResources.COLOR_BLACK,
            ))
      ],
    );
  }
}
