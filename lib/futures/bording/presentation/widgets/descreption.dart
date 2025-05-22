import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBordingDescription extends StatelessWidget {
  const OnBordingDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Text(
        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
        textAlign: TextAlign.center,
        style:
            AppTextStyles.interRegular12..copyWith(color: AppColors.textbody),
      ),
    );
  }
}
