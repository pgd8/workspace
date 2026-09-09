import 'package:flutter/material.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/style/colors_manager.dart';
import 'package:workspace/Core/style/custom_font_weight.dart';

class CustomMainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnTitle;
  final Widget? customContent;
  final Color? btnColor;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? textColor;

  const CustomMainButton({
    super.key,
    required this.btnTitle,
    required this.onPressed,
    this.btnColor,
    this.customContent,
    this.height,
    this.width,
    this.fontSize,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Units.getHeight(context: context, widgetheight: height ?? 56),
      width: Units.getWidth(context: context, widgetWidth: width ?? 327),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor ?? ColorsManager.brandPrimaryLightColor,
          shape: ContinuousRectangleBorder(borderRadius: .circular(18)),
        ),
        child:
            customContent ??
            Text(
              btnTitle,
              style: TextStyle(
                color: textColor ?? ColorsManager.whiteColor,
                fontSize: fontSize ?? 18,
                fontWeight: CustomFontWeight.medium,
              ),
            ),
      ),
    );
  }
}
