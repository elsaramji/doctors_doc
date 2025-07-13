import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/futures/auth/presentation/auth_cubit/login_cubit/signin_cubit.dart';
import 'package:doctors_doc/futures/auth/presentation/functions/auth_bloc_listener.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_form.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_functions.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_header.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginByEmailView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  LoginByEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(),
      child: Builder(
        builder: (context) {
          return BlocListener<SigninCubit, SigninState>(
            listener: (context, state) {
              // TODO: implement listener
              signinBlocListener(state, context);
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Vertical space at the top
                  context.verticalSpace(50),
                  // Login header widget
                  LoginTextHeader(),
                  // Vertical space after the header
                  context.verticalSpace(36),
                  // Login form widget
                  LoginForm(
                    emailController: emailController,
                    passwordController: passwordController,
                    formKey: formKey,
                  ),
                  // Vertical space after the form
                  context.verticalSpace(16),
                  // Login functions widget (e.g., forgot password, remember me)
                  LoginFuctions(),
                  // Vertical space after the functions
                  context.verticalSpace(32),
                  // Primary button for login
                  // This button will trigger the login action
                  PrimaryButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<SigninCubit>().login(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      }
                    },
                    text: 'Login',
                  ),
                  // Vertical space after the primary button
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
