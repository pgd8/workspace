import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/navigation/routes.dart';
import 'package:workspace/Core/shared/custom_main_button.dart';
import 'package:workspace/Core/shared/text_input_field.dart';
import 'package:workspace/Core/style/text_styles.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: .start,
        spacing: Units.getHorizontalPadding(context: context, padding: 10),
        children: [
          Text('Email Address', style: TextStyles.textStyleBlackM16(context)),
          TextInputField(
            hintText: 'name@example.com',
            controller: _emailController,
          ),
          Text('Password', style: TextStyles.textStyleBlackM16(context)),
          TextInputField(
            hintText: 'Enter your password',
            controller: _passwordController,
            isPassword: true,
          ),
          const Spacer(),
          CustomMainButton(
            btnTitle: 'Signup',
            onPressed: () {
              context.go(Routes.kHomeView);
            },
          ),
        ],
      ),
    );
  }
}
