import 'package:druto_shop/shared/styles/dimensions.dart';
import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  fontFamily: 'Roboto',
  primaryColor: Colors.orange,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color.fromARGB(255, 190, 182, 182),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.orange,
    onPrimary: Colors.white,
    secondary: Colors.white,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.black26,
    onSurface: Colors.white24,
  ),
  focusColor: const Color(0xFFADC4C8),
  hintColor: const Color(0xFF52575C),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
    primary: Colors.black,
    textStyle: const TextStyle(color: Colors.black),
  )),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
  textTheme: const TextTheme(
    button: TextStyle(color: Colors.white),
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
