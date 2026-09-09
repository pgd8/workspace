import 'package:flutter/material.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/style/colors_manager.dart';
import 'package:workspace/Core/style/custom_font_weight.dart';

class TextStyles {
  static TextStyle textStyleBrandPrimaryLightColorM18(BuildContext context) =>
      TextStyle(
        color: ColorsManager.brandPrimaryLightColor,
        fontSize: Units.getFontSize(context: context, fontSize: 18),
        fontWeight: CustomFontWeight.medium,
      );

  static TextStyle textStyleBlackSB24(BuildContext context) => TextStyle(
    fontSize: Units.getFontSize(context: context, fontSize: 24),
    fontWeight: CustomFontWeight.semiBold,
    color: ColorsManager.blackColor,
  );

  static TextStyle textStyleBlackSB26(BuildContext context) => TextStyle(
    color: ColorsManager.blackColor,
    fontSize: Units.getFontSize(context: context, fontSize: 26),
    fontWeight: CustomFontWeight.semiBold,
  );
  static TextStyle textStyleNeutralSecondaryR12(BuildContext context) =>
      TextStyle(
        color: ColorsManager.neutralSecondaryColor,
        fontSize: Units.getFontSize(context: context, fontSize: 12),
        fontWeight: CustomFontWeight.regular,
      );
  static TextStyle textStyleNeutralSecondaryR14(BuildContext context) =>
      TextStyle(
        color: ColorsManager.neutralSecondaryColor,
        fontSize: Units.getFontSize(context: context, fontSize: 14),
        fontWeight: CustomFontWeight.regular,
      );

  static TextStyle textStyleWhiteM18(BuildContext context) => TextStyle(
    color: ColorsManager.whiteColor,
    fontSize: Units.getFontSize(context: context, fontSize: 18),
    fontWeight: CustomFontWeight.medium,
  );

  static TextStyle textStyleBlackM16(BuildContext context) => TextStyle(
    color: ColorsManager.blackColor,
    fontSize: Units.getFontSize(context: context, fontSize: 16),
    fontWeight: CustomFontWeight.medium,
  );
}
