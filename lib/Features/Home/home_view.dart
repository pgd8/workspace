import 'package:flutter/material.dart';
import 'package:workspace/Core/Utils/constants.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/shared/widgets/custom_app_bar.dart';
import 'package:workspace/Core/shared/widgets/task_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Constants.getAppBarSize(context),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: .symmetric(
          horizontal: Units.getHorizontalPadding(context: context, padding: 24),
        ),
        child: Column(
          children: [
          TaskItem()
          ]),
      ),
    );
  }
}
