import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workspace/Core/navigation/app_router.dart';
import 'package:workspace/Core/style/app_theme.dart';
import 'package:workspace/Core/style/colors_manager.dart';

class WorkspaceApp extends StatelessWidget {
  const WorkspaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorsManager.whiteColor,
        statusBarIconBrightness: .dark,
      ),
    );
    return SafeArea(
      child: MaterialApp.router(
        title: 'workspace',
        routerConfig: AppRouter.router,
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
