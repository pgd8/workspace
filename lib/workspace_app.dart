import 'package:flutter/material.dart';
import 'package:workspace/Core/navigation/app_router.dart';

class WorkspaceApp extends StatelessWidget {
  const WorkspaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'workspace',
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
