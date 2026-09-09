import 'package:flutter/material.dart';
import 'package:workspace/Core/Utils/units.dart';

class Constants {
  static Size getAppBarSize(BuildContext context) =>
      Size(.infinity, Units.getHeight(context: context, widgetheight: 120));
}
