
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_form.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_functions.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_header.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';

class LoginByEmailView extends StatelessWidget {
  const LoginByEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Vertical space at the top
          context.verticalSpace(50),
          // Login header widget
          LoginTextHeader(),
          // Vertical space after the header
          context.verticalSpace(36),
          // Login form widget
          LoginForm(),
          // Vertical space after the form
          context.verticalSpace(16),
          // Login functions widget (e.g., forgot password, remember me)
          LoginFuctions(),
          // Vertical space after the functions
          context.verticalSpace(32),
          // Primary button for login
          // This button will trigger the login action
          PrimaryButton(onPressed: () {}, text: 'Login'),
          // Vertical space after the primary button
        ],
      ),
    );
  }
}
