import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTextHeader extends StatelessWidget {
  const LoginTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back",
            style: AppTextStyles.interBold24.copyWith(
              color: AppColors.primary100,
            ),
          ),
          Text(
            "We're excited to have you back, can't wait to see what you've been up to since you last \nlogged in.",
            style: AppTextStyles.interRegular14.copyWith(
              color: AppColors.textbody,
              letterSpacing: 0.1,
              height: 1.8,
            ),
          ),
        ],
      ),
    );
  }
}
