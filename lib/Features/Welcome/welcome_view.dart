import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workspace/Core/Utils/units.dart';
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
                  mainAxisAlignment: .center,
                  children: [
                    SvgPicture.asset(AssetsManager.messageIcon),
                    Text(
                      'Continue with Email',
                      style: TextStyles.textStyleWhiteM18,
                    ),
                  ],
                ),
                onPressed: () {},
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

              Row(
                children: [
                  CustomMainButton(
                    btnTitle: '',
                    btnColor: ColorsManager.neutralGhostColor,
                    width: 155,
                    customContent: Row(
                      mainAxisAlignment: .center,
                      children: [
                        SvgPicture.asset(AssetsManager.messageIcon),
                        Text('Facebook', style: TextStyles.textStyleWhiteM18),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  CustomMainButton(
                    btnTitle: '',
                    btnColor: ColorsManager.neutralGhostColor,
                    width: 155,
                    customContent: Row(
                      mainAxisAlignment: .center,
                      children: [
                        SvgPicture.asset(AssetsManager.messageIcon),
                        Text('Google', style: TextStyles.textStyleWhiteM18),
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
