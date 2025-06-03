import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/futures/auth/presentation/auth_cubit/register_cubit/signup_cubit.dart';
import 'package:doctors_doc/futures/auth/presentation/functions/auth_bloc_listener.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/create_account_form.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/signup_header.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: Builder(
        builder: (context) {
          return BlocListener<SignupCubit, SignupState>(
            listener: (context, state) {
              log(state.toString());
              signupBlocListener(state, context);
            },
            child: SingleChildScrollView(
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
                        context.read<SignupCubit>().signupUser(
                          email: emailController.text,
                          password: passwordController.text,
                          name: emailController.text.split('@')[0],
                          phone: phoneController.text,
                        );
                      } else {
                        log("Form validation failed");
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
