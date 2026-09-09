import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/forms/task_form.dart';
import 'package:workspace/Core/style/assets_manager.dart';
import 'package:workspace/Core/style/colors_manager.dart';
import 'package:workspace/Core/style/text_styles.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: .symmetric(
              horizontal: Units.getHorizontalPadding(
                context: context,
                padding: 20,
              ),
            ),
            child: Column(mainAxisSize: .min, children: [TaskForm()]),
          ),
        );
      },
      child: Stack(
        alignment: .bottomCenter,
        children: [
          Container(
            height: Units.getHeight(context: context, widgetheight: 148),
            decoration: BoxDecoration(
              color: ColorsManager.brandPrimaryLightColor,
              borderRadius: .circular(
                Units.getRadius(context: context, radius: 8),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  blurStyle: .outer,
                  offset: Offset.zero,
                  spreadRadius: 0,
                  color: ColorsManager.neutralLineColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Units.getHeight(context: context, widgetheight: 112),
            child: Card(
              margin: .zero,
              shape: ContinuousRectangleBorder(
                borderRadius: .vertical(
                  top: .zero,
                  bottom: .circular(
                    Units.getRadius(context: context, radius: 8),
                  ),
                ),
              ),
              color: ColorsManager.whiteColor,
              child: Padding(
                padding: .symmetric(
                  horizontal: Units.getHorizontalPadding(
                    context: context,
                    padding: 16,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: .symmetric(
                        vertical: Units.getVerticalPadding(
                          context: context,
                          padding: 16,
                        ),
                      ),
                      child: Row(
                        spacing: Units.getHorizontalPadding(
                          context: context,
                          padding: 12,
                        ),
                        children: [
                          Container(
                            height: Units.getHeight(
                              context: context,
                              widgetheight: 28,
                            ),
                            width: Units.getWidth(
                              context: context,
                              widgetWidth: 28,
                            ),
                            decoration: BoxDecoration(
                              color: ColorsManager.brandPrimaryLightColor,
                              borderRadius: .circular(
                                Units.getRadius(context: context, radius: 8),
                              ),
                            ),
                            child: SvgPicture.asset(AssetsManager.addIcon),
                          ),
                          Text(
                            'Tap plus to create a new task',
                            style: TextStyles.textStyleBlackM16(context),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      endIndent: Units.getHorizontalPadding(
                        context: context,
                        padding: 16,
                      ),
                      indent: Units.getHorizontalPadding(
                        context: context,
                        padding: 16,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text('Add Task'),
                        Text('Today . Mon 20 Jul 2022  '),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
