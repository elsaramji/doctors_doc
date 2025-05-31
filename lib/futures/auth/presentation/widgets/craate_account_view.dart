import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/create_account_form.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/signup_header.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';

class CreateAccountbyEmailView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://vcare.integration25.com/api',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  CreateAccountbyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Vertical space at the top
          context.verticalSpace(50),
          // Create account header widget
          CreateAccountTextHeader(),
          // Vertical space after the header
          context.verticalSpace(17),
          //
          CreateAccountForm(
            formKey: formKey,
            emailController: emailController,
            passwordController: passwordController,
            phoneController: phoneController,
          ),
          context.verticalSpace(32),
          PrimaryButton(
            text: "Sign Up",
            onPressed: () {
              if (formKey.currentState?.validate() ?? false) {
              } else {
                log("Form validation failed");
              }
            },
          ),
        ],
      ),
    );
  }
}
