import 'dart:developer';

import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/futures/auth/presentation/regsiter_cubit/regsiter_cubit.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/create_account_form.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/signup_header.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountbyEmailView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  CreateAccountbyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegsiterCubit(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<RegsiterCubit, RegsiterState>(
            builder: (context, state) {
              log("Current state: $state");

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
                      emailController: emailController,
                      passwordController: passwordController,
                      phoneController: phoneController,
                    ),
                    context.verticalSpace(32),
                    PrimaryButton(
                      text: "Sign Up",
                      onPressed: () {
                        // Call the register method from the RegsiterCubit
                        context.read<RegsiterCubit>().register(
                          emailController.text,
                          passwordController.text,
                          phoneController.text,
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
