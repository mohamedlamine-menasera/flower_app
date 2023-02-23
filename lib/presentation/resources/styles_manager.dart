import 'package:flower_app/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight);
}

// light style
TextStyle getLightStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontWeightManager.light, color);

// regular style
TextStyle getRegularStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontWeightManager.regular, color);

// medium style
TextStyle getMediumStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontWeightManager.medium, color);

// semiBold style
TextStyle getSemiBoldStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontWeightManager.semiBold, color);

// bold style
TextStyle getBoldStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontWeightManager.bold, color);

// Text Filed
TextField getTextField(
        {TextInputType textInputType = TextInputType.text,
        bool obscureText = false,
        required String hintText}) =>
    TextField(
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );

// Button
ElevatedButton getButton(VoidCallback? onPressed, String btnText) =>
    ElevatedButton(
      onPressed: onPressed,
      child: Text(
        btnText,
        textAlign: TextAlign.center,
      ),
      // style: ButtonStyle(
      //     backgroundColor: MaterialStateProperty.all(ColorManager.green)),
    );

TextButton getTextButton(VoidCallback? onPressed, String btnText) =>
    TextButton(onPressed: onPressed, child: Text(btnText));
