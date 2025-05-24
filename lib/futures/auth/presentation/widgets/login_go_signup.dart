
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GoSignUp extends StatelessWidget {
  const GoSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Already have an account yet? ",
        style: AppTextStyles.interRegular12.copyWith(color: AppColors.text100),
        children: [
          TextSpan(
            text: "Sign Up",
            style: AppTextStyles.interRegular12.copyWith(
              color: AppColors.primary100,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
