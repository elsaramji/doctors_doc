import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A widget that displays a header for the login screen.
/// It includes a welcome message and a brief description.
/// /// This widget is typically used at the top of the login screen to greet users
/// and provide context about the login process.
class CreateAccountTextHeader extends StatelessWidget {
  const CreateAccountTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Create Account",
            style: AppTextStyles.interBold24().copyWith(
              color: AppColors.primary100,
            ),
          ),
          Text(
            "Sign up now and start exploring all that our app has to offer. We're excited to welcome \nyou to our community!",
            style: AppTextStyles.interRegular14().copyWith(
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
