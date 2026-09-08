import 'package:flutter/material.dart';

class Units {
  // Figma design size
  static const double figmaWidth = 375;
  static const double figmaHeight = 812;

  // Responsive Width
  static double getWidth({
    required BuildContext context,
    required double widgetWidth,
  }) {
    return (MediaQuery.of(context).size.width * widgetWidth) / figmaWidth;
  }

  // Responsive Height
  static double getHeight({
    required BuildContext context,
    required double widgetheight,
  }) {
    return (MediaQuery.of(context).size.height * widgetheight) / figmaHeight;
  }

  // Responsive Font Size
  static double getFontSize({
    required BuildContext context,
    required double fontSize,
  }) {
    return (MediaQuery.of(context).size.width * fontSize) / figmaWidth;
  }

  // Responsive Radius
  static double getRadius({
    required BuildContext context,
    required double radius,
  }) {
    return (MediaQuery.of(context).size.width * radius) / figmaWidth;
  }

  // Responsive Horizontal Padding
  static double getHorizontalPadding({
    required BuildContext context,
    required double padding,
  }) {
    return getWidth(context: context, widgetWidth: padding);
  }

  // Responsive Vertical Padding
  static double getVerticalPadding({
    required BuildContext context,
    required double padding,
  }) {
    return getHeight(context: context, widgetheight: padding);
  }
}
