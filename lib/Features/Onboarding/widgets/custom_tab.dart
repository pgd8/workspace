import 'package:flutter/material.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/style/colors_manager.dart';
import 'package:workspace/Core/style/text_styles.dart';

class CustomTab extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const CustomTab({
    super.key,
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        Stack(
          alignment: .bottomCenter,
          children: [
            Center(child: Image.asset(image)),
            Container(
              height: Units.getHeight(context: context, widgetheight: 208),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .bottomCenter,
                  end: .topCenter,
                  colors: [
                    ColorsManager.whiteColor,
                    ColorsManager.whiteColor,
                    ColorsManager.whiteColor.withAlpha(0),
                  ],
                ),
              ),
            ),
            Text(
              title,
              style: TextStyles.textStyleBlackSB26(context),
              textAlign: .center,
            ),
          ],
        ),
        Text(
          description,
          textAlign: .center,
          style: TextStyles.textStyleNeutralSecondaryR14(context),
        ),
      ],
    );
  }
}
