import 'package:druto_shop/shared/styles/colors.dart';
import 'package:druto_shop/shared/styles/dimensions.dart';
import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    primaryColor: ColorResources.PRIMARY_COLOR,
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorResources.COLOR_WHITE,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: ColorResources.PRIMARY_COLOR,
      onPrimary: ColorResources.ON_PRIMARY,
      secondary: ColorResources.SECONDARY_COLOR,
      onSecondary: ColorResources.ON_SECONDARY,
      error: ColorResources.ERROR,
      onError: ColorResources.ON_ERROR,
      background: ColorResources.BACKGROUND_COLOR,
      onBackground: ColorResources.ON_BACKGROUND,
      surface: ColorResources.SURFACE,
      onSurface: ColorResources.ON_SURFACE,
    ),
    hintColor: const Color(0xFFE7F6F8),
    focusColor: const Color(0xFFADC4C8),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        textStyle: const TextStyle(color: Colors.white),
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
      },
    ),
    textTheme: const TextTheme(
      button: TextStyle(color: Color(0xFF252525)),
      headline1: TextStyle(
          fontWeight: FontWeight.w300, fontSize: Dimensions.fontSizeDefault),
      headline2: TextStyle(
          fontWeight: FontWeight.w400, fontSize: Dimensions.fontSizeDefault),
      headline3: TextStyle(
          fontWeight: FontWeight.w500, fontSize: Dimensions.fontSizeDefault),
      headline4: TextStyle(
          fontWeight: FontWeight.w600, fontSize: Dimensions.fontSizeDefault),
      headline5: TextStyle(
          fontWeight: FontWeight.w700, fontSize: Dimensions.fontSizeDefault),
      headline6: TextStyle(
          fontWeight: FontWeight.w800, fontSize: Dimensions.fontSizeDefault),
      caption: TextStyle(
          fontWeight: FontWeight.w900, fontSize: Dimensions.fontSizeDefault),
      subtitle1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
      bodyText2: TextStyle(fontSize: 12.0),
      bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    primaryColor: ColorResources.PRIMARY_COLOR,
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorResources.SCAFFOLD,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: ColorResources.PRIMARY_COLOR,
      onPrimary: ColorResources.ON_PRIMARY,
      secondary: ColorResources.SECONDARY_COLOR,
      onSecondary: ColorResources.ON_SECONDARY,
      error: ColorResources.ERROR,
      onError: ColorResources.ON_ERROR,
      background: ColorResources.BACKGROUND_COLOR,
      onBackground: ColorResources.ON_BACKGROUND,
      surface: ColorResources.SURFACE,
      onSurface: ColorResources.ON_SURFACE,
    ),
    hintColor: const Color(0xFFE7F6F8),
    focusColor: const Color(0xFFADC4C8),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        textStyle: const TextStyle(color: Colors.white),
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
      },
    ),
    textTheme: const TextTheme(
      button: TextStyle(color: Color(0xFF252525)),
      headline1: TextStyle(
          fontWeight: FontWeight.w300, fontSize: Dimensions.fontSizeDefault),
      headline2: TextStyle(
          fontWeight: FontWeight.w400, fontSize: Dimensions.fontSizeDefault),
      headline3: TextStyle(
          fontWeight: FontWeight.w500, fontSize: Dimensions.fontSizeDefault),
      headline4: TextStyle(
          fontWeight: FontWeight.w600, fontSize: Dimensions.fontSizeDefault),
      headline5: TextStyle(
          fontWeight: FontWeight.w700, fontSize: Dimensions.fontSizeDefault),
      headline6: TextStyle(
          fontWeight: FontWeight.w800, fontSize: Dimensions.fontSizeDefault),
      caption: TextStyle(
          fontWeight: FontWeight.w900, fontSize: Dimensions.fontSizeDefault),
      subtitle1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
      bodyText2: TextStyle(fontSize: 12.0),
      bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
    ),
  );
}
