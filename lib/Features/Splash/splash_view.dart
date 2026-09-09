import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workspace/Core/navigation/routes.dart';
import 'package:workspace/Core/shared/app_logo.dart';
import 'package:workspace/Core/style/colors_manager.dart';
import 'package:workspace/Core/style/text_styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    routeToOnboarding();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.whiteColor,
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: .center,
          children: [
            AppLogo(),
            Text(
              'The best to do list application for you',
              style: TextStyles.textStyleBrandPrimaryLightColorM18(context),
            ),
          ],
        ),
      ),
    );
  }

  void routeToOnboarding() {
    Future.delayed(Duration(seconds: 3), () {
      context.pushReplacement(Routes.kOnboardingView);
    });
  }
}
