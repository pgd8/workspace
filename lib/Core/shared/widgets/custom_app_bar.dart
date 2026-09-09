import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/style/assets_manager.dart';
import 'package:workspace/Core/style/text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(
        horizontal: Units.getHorizontalPadding(context: context, padding: 24),
        vertical: Units.getVerticalPadding(context: context, padding: 24),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              Text('Workspace', style: TextStyles.textStyleBlackSB24(context)),
              Text(
                'Best platform for creating to-do lists',
                style: TextStyles.textStyleNeutralSecondaryR14(context),
              ),
            ],
          ),
          SvgPicture.asset(AssetsManager.settingsIcon),
        ],
      ),
    );
  }
}
