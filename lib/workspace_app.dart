import 'package:flutter/material.dart';
import 'package:workspace/Core/navigation/app_router.dart';
import 'package:workspace/Core/style/app_theme.dart';

class WorkspaceApp extends StatelessWidget {
  const WorkspaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'workspace',
      routerConfig: AppRouter.router,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
