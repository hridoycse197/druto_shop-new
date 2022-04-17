import 'package:carousel_slider/carousel_slider.dart';
import 'package:druto_shop/pages/home_page/controller/home_page_controller.dart';
import 'package:druto_shop/pages/home_page/widgets/exclusive_offers_widget.dart';
import 'package:druto_shop/pages/home_page/widgets/home_screen_custom_app_bar.dart';
import 'package:druto_shop/pages/home_page/widgets/popular_list_view_widget.dart';
import 'package:druto_shop/pages/home_page/widgets/slider_arrow_widget.dart';
import 'package:druto_shop/pages/home_page/widgets/trendy_deals_list_view_widget.dart.dart';
import 'package:druto_shop/shared/styles/colors.dart';
import 'package:druto_shop/widgets/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_indicator/scroll_indicator.dart';
import 'widgets/categories_listview_builder_widget.dart';
import 'widgets/product_grid_view.dart';
import 'widgets/search_box_widget.dart';

class HomeScreen extends GetView<HomePageController> {
  HomeScreen({Key? key}) : super(key: key);

  int _bottomnavindex = 2;
  var listoficon = [
    Icons.add_shopping_cart_outlined,
    Icons.favorite,
    Icons.home,
    Icons.navigation,
    Icons.person_outline_sharp,
  ];
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: HomeScreenCustomAppbarWidget(
              title: 'assets/images/homepageappbarimage.png')),
      backgroundColor: ColorResources.BACKGROUND_COLOR,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: ListView(
            controller: controller.scrollController,
            children: [
              // ScrollIndicator(
              //   scrollController: controller.scrollController,
              //   width: 50,
              //   height: 5,
              //   indicatorWidth: 20,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: Colors.grey[300]),
              //   indicatorDecoration: BoxDecoration(
              //       color: Colors.deepOrange,
              //       borderRadius: BorderRadius.circular(10)),
              // ),
              SizedBox(
                height: height * 0.01,
              ),
              //carousel slider start

              Stack(
                children: [
                  CarouselSlider(
                    carouselController: carouselController,
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayCurve: Curves.bounceInOut,
                      viewportFraction: 1,
                      height: height * 0.20,
                    ),
                    items: controller.allitem.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Card(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              width: width - width * 0.05,
                              decoration: BoxDecoration(
                                color: Colors.tealAccent,
                                border: Border.all(
                                    color: ColorResources.COLOR_BLACK,
                                    width: 2),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(i.toString())),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Positioned(
                    top: 50,
                    right: 10,
                    child: SliderArrowWidget(
                        carouselController: carouselController,
                        icon: Icons.arrow_forward_ios,
                        ontapfunction: () {
                          carouselController.nextPage();
                        }),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: SliderArrowWidget(
                        carouselController: carouselController,
                        icon: Icons.arrow_back_ios,
                        ontapfunction: () {
                          carouselController.previousPage();
                        }),
                  )
                ],
              ),
              //carousel slider end

              //searchbox start
              SizedBox(
                height: height * 0.01,
              ),
              SearchBoxWidget(width: width, height: height),
              //searchbox end

              //Categories div start
              SizedBox(
                height: height * 0.02,
              ),
              CategoryListViewBuilderWidget(
                title: 'Categories',
                onarrowtapfunction: () {},
              ),
              //categories div end

              //Popular div start
              SizedBox(
                height: height * 0.004,
              ),
              PopularListViewBuilderWidget(
                title: 'Popular',
                onarrowtapfunction: () {},
              ),
              //popular div end

              //Exclusive div start

              ExclusiveOffersWidget(
                title: 'Exclusive offers',
                onarrowtapfunction: () {},
              ),

              //Trendy div start

              TrendyDealsListViewWidget(
                title: 'Trendy Deals',
                onarrowtapfunction: () {},
              ),
              //Trendy div end

              //Product div start

              ProductGridview(height: height),
            ],
          ),
        ),
      ),
    );
  }
}
