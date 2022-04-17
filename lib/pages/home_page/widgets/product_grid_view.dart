import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/styles/colors.dart';
import '../controller/home_page_controller.dart';

class ProductGridview extends GetView<HomePageController> {
  const ProductGridview({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Product',
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
                  onPressed: () {},
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
          height: height * 0.01,
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 1.19,
            crossAxisCount: 2,
          ),
          itemCount: controller.allitem.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: height * 0.17,
                        width: width * 0.50,
                        child: Image(
                          image: AssetImage(controller.allitem[index]),
                        ),
                        decoration: BoxDecoration(
                            color: ColorResources.COLOR_WHITE,
                            borderRadius: BorderRadius.circular(width * .02),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    ColorResources.COLOR_BLACK.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 2),
                              ),
                            ]),
                      ),
                    ),
                    Positioned(
                      right: 7,
                      top: 5,
                      child: Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 45,
                        child: Text(
                          '-15%',
                          style: GoogleFonts.roboto(
                              fontSize: 12, color: ColorResources.COLOR_WHITE),
                        ),
                        decoration: const BoxDecoration(
                          color: ColorResources.DISCOUNT_BACKGROUND,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            bottomLeft: Radius.circular(7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Eggs',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: ColorResources.COLOR_BLACK),
                      ),
                      Text(
                        '\$ 10',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: ColorResources.COLOR_BLACK),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 96,
                        height: 25,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              )),
                              backgroundColor: MaterialStateProperty.all(
                                  ColorResources.PRIMARY_COLOR),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.add_shopping_cart,
                                    size: 14,
                                    color: ColorResources.COLOR_BLACK),
                                Text(
                                  'Add to cart',
                                  style: GoogleFonts.roboto(
                                      fontSize: 10,
                                      color: ColorResources.COLOR_BLACK,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: (() {}),
                        child: Container(
                          width: width * 0.13,
                          height: 25,
                          decoration: BoxDecoration(
                              color: ColorResources.PRIMARY_COLOR,
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
