import 'package:carousel_slider/carousel_slider.dart';
import 'package:druto_shop/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class SliderArrowWidget extends StatelessWidget {
  VoidCallback ontapfunction;
  IconData icon;
   SliderArrowWidget({
    Key? key,required this.ontapfunction,required this.icon,
    required this.carouselController,
  }) : super(key: key);

  final CarouselController carouselController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapfunction,
      child: CircleAvatar(
        child:Icon(  
          icon,
          size: 35,
          color: ColorResources.COLOR_BLACK,
        ),
        backgroundColor: ColorResources.COLOR_WHITE.withOpacity(0.8),
      ),
    );
  }
}
