import 'package:flower_app/presentation/resources/styles_manager.dart';
import 'package:flower_app/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
// Main color
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey,
    splashColor: ColorManager.lightPrimary,
    // ripple effect : Color display when u click on the button
    // The fill color of the button when the button is disabled "before click it"

    // CardView Theme
    cardTheme: const CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    // AppBar theme
    appBarTheme: AppBarTheme(
      //centerTitle: true,
      color: ColorManager.green,
      elevation: AppSize.s4,
      // This property controls the size of the shadow below the app bar if shadowColor is not null.
      //shadowColor: ColorManager.lightPrimary,
      titleTextStyle:
          getBoldStyle(fontSize: FontSize.s20, color: ColorManager.white),
    ),

    // TextButtonTheme
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            textStyle: getBoldStyle(
                color: ColorManager.darkGrey, fontSize: FontSize.s16))),

    // Button theme
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorManager.green,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.lightPrimary,
      textTheme: ButtonTextTheme.primary,
    ),

    // Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.green,
          textStyle:
              getBoldStyle(color: ColorManager.white, fontSize: FontSize.s18)),
    ),

    // Text Theme
    // The names of the 2018 TextTheme properties match this table from the Material Design spec with two exceptions: the styles called H1-H6 in the spec are headline1-headline6 in the API, and body1,body2 are called bodyText1 and bodyText2.
    // Don't use it
    // The 2018 spec has thirteen text styles:
    //
    // NAME         SIZE  WEIGHT  SPACING
    // headline1    96.0  light   -1.5
    // headline2    60.0  light   -0.5
    // headline3    48.0  regular  0.0
    // headline4    34.0  regular  0.25
    // headline5    24.0  regular  0.0
    // headline6    20.0  medium   0.15
    // subtitle1    16.0  regular  0.15
    // subtitle2    14.0  medium   0.1
    //     body1        16.0  regular  0.5   (bodyText1)
    // body2        14.0  regular  0.25  (bodyText2)
    // button       14.0  medium   1.25
    // caption      12.0  regular  0.4
    // overline     10.0  regular  1.5

    textTheme: TextTheme(
      displayMedium:
          getMediumStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
      displayLarge:
          getBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
      titleLarge:
          getBoldStyle(color: ColorManager.white, fontSize: FontSize.s16),

    ),

    // Input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // Content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // Hint style
      hintStyle:
          getRegularStyle(color: ColorManager.darkGrey, fontSize: FontSize.s14),
      labelStyle:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: ColorManager.error),

      // Enabled border style
      enabledBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppBorder.b1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppBorder.b8))),

      // Focused border style
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppBorder.b1_5),
      ),

      // Error border style
      errorBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: AppBorder.b1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppBorder.b8))),

      // Focused border style
      focusedErrorBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppBorder.b8),
          borderRadius: BorderRadius.all(Radius.circular(AppBorder.b8))),
    ),
  );
}
