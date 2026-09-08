import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/navigation/routes.dart';
import 'package:workspace/Core/shared/custom_main_button.dart';
import 'package:workspace/Core/shared/custom_text_button.dart';
import 'package:workspace/Core/style/assets_manager.dart';
import 'package:workspace/Core/style/colors_manager.dart';
import 'package:workspace/Features/Onboarding/widgets/custom_tab.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: .only(
            top: Units.getHeight(context: context, widgetheight: 68),
          ),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              Container(
                alignment: .topEnd,
                child: CustomTextButton(
                  onPressed: () {
                    context.pushReplacement(Routes.kWelcomeView);
                  },
                  btnTitle: 'Skip',
                ),
              ),
              SizedBox(
                height: Units.getHeight(context: context, widgetheight: 30),
              ),
              SizedBox(
                height: Units.getHeight(context: context, widgetheight: 466),
                child: PageView(
                  controller: _controller,
                  allowImplicitScrolling: false,
                  physics: NeverScrollableScrollPhysics(),
                  children: _buildTabs(),
                ),
              ),
              SizedBox(
                height: Units.getHeight(context: context, widgetheight: 32),
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: ExpandingDotsEffect(
                    activeDotColor: ColorsManager.brandPrimaryLightColor,
                    dotColor: ColorsManager.dotsColor,
                    dotHeight: Units.getHeight(
                      context: context,
                      widgetheight: 8,
                    ),
                    dotWidth: Units.getWidth(context: context, widgetWidth: 8),
                  ),
                ),
              ),
              SizedBox(
                height: Units.getHeight(context: context, widgetheight: 86),
              ),
              CustomMainButton(
                btnTitle: 'Continue',
                onPressed: () {
                  animateToNextPage();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void animateToNextPage() {
    final int currentPage = _controller.page?.round() ?? 0;
    if (currentPage == 1) {
      context.pushReplacement(Routes.kWelcomeView);
    } else {
      _controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  List<Widget> _buildTabs() => [
    CustomTab(
      image: AssetsManager.onboardingOneImage,
      title: 'Your convenience in \nmaking a todo list',
      description:
          'Here\'s a mobile platform that helps you create task\nor to list so that it can help you in every job\neasier and faster.',
    ),
    CustomTab(
      image: AssetsManager.onboardingTwoImage,
      title: 'Your convenience in \nmaking a todo list',
      description:
          'Here\'s a mobile platform that helps you create task\nor to list so that it can help you in every job\neasier and faster.',
    ),
  ];
}
