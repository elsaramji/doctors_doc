import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBordingButton extends StatelessWidget {
 final VoidCallback? onPressed;
  const OnBordingButton({
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: TextButton(
        onPressed:onPressed,
        child: Text(
          "Get Started",
          style: AppTextStyles.interSemibold16.copyWith(
            color: Colors.white,
          ),
        ),
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
          minimumSize: WidgetStatePropertyAll(
            Size(context.width(context), 52.h),
          ),
          backgroundColor: WidgetStatePropertyAll(AppColors.primary100),
        ),
      ),
    );
  }
}
