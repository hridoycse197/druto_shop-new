import 'package:druto_shop/pages/home_page/widgets/custom_text_widget.dart';
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
            childAspectRatio: 1 / 1.24,
            crossAxisCount: 2,
          ),
          itemCount: controller.allitem.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: height * 0.25,
                width: width * 0.50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * .02),
                  boxShadow: const [
                    BoxShadow(
                      color: ColorResources.DIVIDER,
                      spreadRadius: 1,
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 146,
                          decoration: BoxDecoration(
                            color: ColorResources.BACKGROUND_COLOR
                                .withOpacity(0.8),
                            image: DecorationImage(
                              image: AssetImage(controller.allitem[index]),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 42,
                            child: CustomTextWidgets(
                                title: '-15%',
                                fontsize: 14,
                                fontweight: FontWeight.w600,
                                fontcolor: ColorResources.COLOR_WHITE),
                            decoration: const BoxDecoration(
                              color: ColorResources.SECONDARY_COLOR,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: ColorResources.COLOR_WHITE,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      height: 75,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Eggs',
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: ColorResources.COLOR_BLACK),
                                  ),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 96,
                                  height: 20,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        )),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                ColorResources.PRIMARY_COLOR),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.add_shopping_cart,
                                              size: 14,
                                              color:
                                                  ColorResources.COLOR_BLACK),
                                          Text(
                                            'Add to cart',
                                            style: GoogleFonts.roboto(
                                                fontSize: 10,
                                                color:
                                                    ColorResources.COLOR_BLACK,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      )),
                                ),
                                GestureDetector(
                                  onTap: (() {}),
                                  child: Container(
                                    width: width * 0.09,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: ColorResources.PRIMARY_COLOR,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
