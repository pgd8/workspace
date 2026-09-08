import 'package:flutter/material.dart';
import 'package:workspace/Core/style/colors_manager.dart';
import 'package:workspace/Core/style/custom_font_weight.dart';

class TextStyles {
  static TextStyle textStyleBrandPrimaryLightColorM18 = TextStyle(
    color: ColorsManager.brandPrimaryLightColor,
    fontSize: 18,
    fontWeight: CustomFontWeight.medium,
  );

  static TextStyle textStyleBlackSB26 = TextStyle(
    color: ColorsManager.blackColor,
    fontSize: 26,
    fontWeight: CustomFontWeight.semiBold,
  );
  static TextStyle textStyleNeutralSecondaryR12 = TextStyle(
    color: ColorsManager.neutralSecondaryColor,
    fontSize: 12,
    fontWeight: CustomFontWeight.regular,
  );
  static TextStyle textStyleNeutralSecondaryR14 = TextStyle(
    color: ColorsManager.neutralSecondaryColor,
    fontSize: 14,
    fontWeight: CustomFontWeight.regular,
  );

  static TextStyle textStyleWhiteM18 = TextStyle(
    color: ColorsManager.whiteColor,
    fontSize: 18,
    fontWeight: CustomFontWeight.medium,
  );
}
