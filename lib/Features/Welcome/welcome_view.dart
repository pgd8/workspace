import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/navigation/routes.dart';
import 'package:workspace/Core/shared/custom_main_button.dart';
import 'package:workspace/Core/style/assets_manager.dart';
import 'package:workspace/Core/style/colors_manager.dart';
import 'package:workspace/Core/style/text_styles.dart';
import 'package:workspace/Features/Onboarding/widgets/custom_tab.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .only(
          top: Units.getHeight(context: context, widgetheight: 76),
          bottom: Units.getHeight(context: context, widgetheight: 50),
        ),
        child: Container(
          padding: .symmetric(
            horizontal: Units.getWidth(context: context, widgetWidth: 24),
          ),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome To ',
                      style: TextStyles.textStyleBlackSB26,
                    ),
                    TextSpan(
                      text: 'Workspace',
                      style: TextStyles.textStyleBlackSB26.copyWith(
                        color: ColorsManager.brandPrimaryLightColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Units.getHeight(context: context, widgetheight: 53),
              ),
              Center(
                child: CustomTab(
                  title: '',
                  image: AssetsManager.welcomeImage,
                  description: '',
                ),
              ),
              CustomMainButton(
                btnTitle: '',
                customContent: Row(
                  spacing: Units.getWidth(context: context, widgetWidth: 10),
                  mainAxisAlignment: .center,
                  children: [
                    SvgPicture.asset(AssetsManager.messageIcon),
                    Text(
                      'Continue with Email',
                      style: TextStyles.textStyleWhiteM18,
                    ),
                  ],
                ),
                onPressed: () {
                  context.pushReplacement(Routes.kLoginView);
                },
              ),
              SizedBox(
                height: Units.getHeight(context: context, widgetheight: 16),
              ),
              Row(
                spacing: Units.getWidth(context: context, widgetWidth: 10),
                children: [
                  Expanded(child: Divider()),
                  Text(
                    'Or Continue With',
                    style: TextStyles.textStyleNeutralSecondaryR12,
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: Units.getHeight(context: context, widgetheight: 23),
              ),
              Row(
                spacing: Units.getWidth(context: context, widgetWidth: 10),
                children: [
                  CustomMainButton(
                    btnTitle: '',
                    btnColor: ColorsManager.neutralBackgroundColor,
                    width: 155,
                    customContent: Row(
                      mainAxisAlignment: .center,
                      spacing: Units.getWidth(
                        context: context,
                        widgetWidth: 10,
                      ),
                      children: [
                        SvgPicture.asset(AssetsManager.facebookIcon),
                        Text(
                          'Facebook',
                          style: TextStyles.textStyleWhiteM18.copyWith(
                            color: ColorsManager.blackColor,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  CustomMainButton(
                    btnTitle: '',
                    btnColor: ColorsManager.neutralBackgroundColor,
                    width: 155,
                    customContent: Row(
                      mainAxisAlignment: .center,
                      spacing: Units.getWidth(
                        context: context,
                        widgetWidth: 10,
                      ),
                      children: [
                        SvgPicture.asset(AssetsManager.googleIcon),
                        Text(
                          'Google',
                          style: TextStyles.textStyleWhiteM18.copyWith(
                            color: ColorsManager.blackColor,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
