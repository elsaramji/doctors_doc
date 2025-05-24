import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
