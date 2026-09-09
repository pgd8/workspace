import 'package:flutter/material.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/shared/custom_main_button.dart';
import 'package:workspace/Core/shared/text_input_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
          const Text(
            'Email Address',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          TextInputField(
            hintText: 'name@example.com',
            controller: _emailController,
          ),
          TextInputField(
            hintText: 'Enter your password',
            controller: _passwordController,
            isPassword: true,
          ),
          const Spacer(),
          CustomMainButton(btnTitle: 'Next', onPressed: () {}),
        ],
      ),
    );
  }
}
