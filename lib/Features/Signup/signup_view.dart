import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/forms/signup_form.dart';
import 'package:workspace/Core/navigation/routes.dart';
import 'package:workspace/Core/style/colors_manager.dart';
import 'package:workspace/Core/style/text_styles.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.whiteColor,
      body: Padding(
        padding: .symmetric(
          horizontal: Units.getVerticalPadding(context: context, padding: 48),
        ),
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            const SizedBox(height: 40),
            Text(
              'Create account',
              textAlign: TextAlign.center,
              style: TextStyles.textStyleBlackSB24(context),
            ),
            SizedBox(
              height: Units.getVerticalPadding(context: context, padding: 8),
            ),
            const Text(
              'Create your account and feel the benefits',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(
              height: Units.getVerticalPadding(context: context, padding: 40),
            ),

            Expanded(child: SignupForm()),
            SizedBox(
              height: Units.getVerticalPadding(context: context, padding: 24),
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already Have Account?',
                      style: TextStyles.textStyleNeutralSecondaryR12(context),
                    ),
                    TextSpan(
                      text: ' Login',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.go(Routes.kLoginView);
                        },
                      style: TextStyles.textStyleNeutralSecondaryR12(
                        context,
                      ).copyWith(color: ColorsManager.brandPrimaryColor),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Units.getVerticalPadding(context: context, padding: 24),
            ),
          ],
        ),
      ),
    );
  }
}
