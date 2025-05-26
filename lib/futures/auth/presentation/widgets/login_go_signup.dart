import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// A widget that displays a "Sign Up" link for users who already have an account.
/// This widget is used in the login view to prompt users to sign up if they haven't done so yet.
/// /// The text is styled with a specific font style and color, and the link is interactive,
/// allowing users to tap on it to navigate to the sign-up page.
class GoSignUp extends StatelessWidget {
  const GoSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Already have an account yet? ",
        style: AppTextStyles.interRegular11().copyWith(
          color: AppColors.text100,
        ),
        children: [
          TextSpan(
            text: "Sign Up",
            style: AppTextStyles.interSemiBold11().copyWith(
              color: AppColors.primary100,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
