import 'package:doctors_doc/config/routes/constant_routs.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/auth_view_builder.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_devider.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_go_signup.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_social_buttons.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_terms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthView extends StatefulWidget {
  static String route = ConstantRouts.auth;

  AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    // This is the main login view that contains all the widgets related to the login process.
    // It includes the header, login form, functions, primary button, social buttons, terms and conditions, and go to sign up.
    // The layout is responsive and uses ScreenUtil for dimensions.
    return Scaffold(
      // Set the background color of the login view
      backgroundColor: AppColors.backgroundwhite,
      // Use SafeArea to avoid system UI overlaps
      body: SafeArea(
        // Use a Container to provide padding and margin
        child: SingleChildScrollView(
          child: Container(
            // Set the padding for the container
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            // Column to arrange the widgets vertically
            child: Column(
              children: [
                AuthViewBuilder(controller: controller),
                // Vertical space after the login form
                context.verticalSpace(46),
                // Divider for social login options
                LoginDivider(),
                // Vertical space after the divider
                context.verticalSpace(32),
                // Social buttons for login (e.g., Google, Facebook)
                LoginSocialButtons(),

                // terms and conditions text
                TermsandConditions(),
                // Vertical space after the terms and conditions
                context.verticalSpace(24),
                GoSignUp(controller: controller),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
