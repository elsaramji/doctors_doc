import 'package:doctors_doc/config/routes/constant_routs.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_devider.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_form.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_functions.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_go_signup.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_header.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_social_buttons.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_terms.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  static String route = ConstantRouts.login;
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundwhite,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              context.verticalSpace(50),
              LoginTextHeader(),
              context.verticalSpace(36),
              LoginForm(),
              context.verticalSpace(16),
              LoginFuctions(),
              context.verticalSpace(32),
              PrimaryButton(onPressed: () {}, text: 'Login'),
              context.verticalSpace(46),
              LoginDivider(),
              context.verticalSpace(32),
              LoginSocialButtons(),

              context.verticalSpace(32),
              // terms and conditions text
              TermsandConditions(),
              context.verticalSpace(24),
              GoSignUp(),
            ],
          ),
        ),
      ),
    );
  }
}
