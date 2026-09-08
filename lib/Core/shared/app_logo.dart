import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workspace/Core/style/assets_manager.dart';
import 'package:workspace/Core/style/colors_manager.dart';

class AppLogo extends StatelessWidget {
  final double? width;
  final double? height;
  const AppLogo({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 150,
      height: height ?? 150,
      decoration: BoxDecoration(
        color: ColorsManager.whiteColor,
        borderRadius: .circular(12),
      ),
      child: SvgPicture.asset(AssetsManager.appLogoIcon),
    );
  }
}
