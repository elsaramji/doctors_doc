import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A widget that displays terms and conditions text with clickable links for "Terms & Conditions" and "Privacy Policy".
/// This widget is used in the login view to inform users about the terms they agree to by signing in.
/// /// The text is styled with a specific font style and color, and the links are interactive, allowing users to tap on them.
class TermsandConditions extends StatelessWidget {
  const TermsandConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: "By signing in, you agree to our ",
          style: AppTextStyles.interRegular12.copyWith(color: AppColors.text60),
          children: [
            TextSpan(
              text: "Terms & Conditions",
              style: AppTextStyles.interRegular12.copyWith(
                color: AppColors.text100,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(
              text: " and ",
              style: AppTextStyles.interRegular12.copyWith(
                color: AppColors.text60,
              ),
            ),
            TextSpan(
              text: "Privacy Policy.",
              style: AppTextStyles.interRegular12.copyWith(
                color: AppColors.text100,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}
