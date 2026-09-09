import 'package:flutter/material.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/forms/login_form.dart';
import 'package:workspace/Core/shared/custom_main_button.dart';
import 'package:workspace/Core/shared/text_input_field.dart';
import 'package:workspace/Core/style/colors_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
            const Text(
              'Welcome Back!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: Units.getVerticalPadding(context: context, padding: 8),
            ),
            const Text(
              'Your work faster and structured with Workspace',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(
              height: Units.getVerticalPadding(context: context, padding: 40),
            ),

            Expanded(child: LoginForm()),
            SizedBox(
              height: Units.getVerticalPadding(context: context, padding: 24),
            ),
          ],
        ),
      ),
    );
  }
}
