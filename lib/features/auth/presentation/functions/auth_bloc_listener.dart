import 'package:doctors_doc/config/routes/constant_routs.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/features/auth/presentation/auth_cubit/login_cubit/signin_cubit.dart';
import 'package:doctors_doc/features/auth/presentation/auth_cubit/register_cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void signupBlocListener(SignupState state, BuildContext context) {
  if (state is SignupError) {
    context.pop();
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(state.errorModel.message)));
  } else if (state is SignupLoading) {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(color: AppColors.secondaryfillred),
      ),
    );
  } else if (state is SignupSuccess) {
    context.pop();
    context.go(ConstantRouts.home);
  }
}


void signinBlocListener(SigninState state, BuildContext context) {
  if (state is SigninError) {
    context.pop();
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(state.errorModel.message)));
  } else if (state is SigninLoading) {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(color: AppColors.secondaryfillred),
      ),
    );
  } else if (state is SigninSuccess) {
    context.pop();
    context.go(ConstantRouts.home);
  }
}
