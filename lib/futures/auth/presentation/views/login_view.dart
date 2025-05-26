import 'package:doctors_doc/config/routes/constant_routs.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_devider.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_form.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_functions.dart';
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
                context.verticalSpace(46),
                // Divider for social login options
                LoginDivider(),
                // Vertical space after the divider
                context.verticalSpace(32),
                // Social buttons for login (e.g., Google, Facebook)
                LoginSocialButtons(),

                // terms and conditions text
                TermsandConditions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
