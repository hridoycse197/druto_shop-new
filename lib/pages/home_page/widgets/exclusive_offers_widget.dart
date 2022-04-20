import 'package:druto_shop/pages/home_page/controller/home_page_controller.dart';
import 'package:druto_shop/pages/home_page/widgets/custom_text_widget.dart';
import 'package:druto_shop/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class ExlusiveOffersWidget extends GetView<HomePageController> {
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
  ExlusiveOffersWidget(
      {Key? key, required this.title, required this.onarrowtapfunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextWidgets(
              title: title,
              fontsize: 20,
              fontweight: FontWeight.w700,
              fontcolor: ColorResources.COLOR_BLACK,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextWidgets(
                  title: 'see all',
                  fontsize: 20,
                  fontweight: FontWeight.w400,
                  fontcolor: ColorResources.COLOR_BLACK,
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
          height: 275,
          child: ListView.builder(
            shrinkWrap: true,
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
      padding: const EdgeInsets.symmetric(horizontal: 5.5),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorResources.DIVIDER),
              color: ColorResources.ON_SECONDARY,
            ),
            alignment: Alignment.topCenter,
            height: 275,
            width: 184,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                    height: 150,
                    image: AssetImage(controller.allitem[index]),
                  ),
                ),
                Container(
                  width: 184,
                  height: 91,
                  color: ColorResources.COLOR_WHITE,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomTextWidgets(
                              title: '\$ 90.00',
                              fontsize: 14,
                              fontweight: FontWeight.w500,
                              fontcolor: ColorResources.COLOR_BLACK),
                          CustomTextWidgets(
                              textDecoration: TextDecoration.lineThrough,
                              title: '\$ 90.00',
                              fontsize: 14,
                              fontweight: FontWeight.w500,
                              fontcolor: ColorResources.SECONDARY_COLOR)
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: CustomTextWidgets(
                            title: 'Cleaners ',
                            fontsize: 19,
                            fontweight: FontWeight.w400,
                            fontcolor: ColorResources.COLOR_BLACK),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_shopping_cart_sharp),
                              CustomTextWidgets(
                                  title: 'Add to cart',
                                  fontsize: 12,
                                  fontweight: FontWeight.w500,
                                  fontcolor: ColorResources.COLOR_BLACK)
                            ],
                          ),
                          margin: EdgeInsets.all(5),
                          width: 145,
                          height: 28,
                          decoration: BoxDecoration(
                              color: ColorResources.PRIMARY_COLOR,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            right: 13,
            top: 10,
            child: Icon(
              Icons.favorite_outlined,
              color: ColorResources.SECONDARY_VARIANT,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
