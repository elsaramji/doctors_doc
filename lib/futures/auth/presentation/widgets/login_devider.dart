

import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(color: AppColors.specialGray, thickness: 1.5),
        Container(
          width: 90.w,
          color: AppColors.backgroundwhite,
          child: Center(
            child: Text(
              "Or Sign In With",
              style: AppTextStyles.interRegular12.copyWith(
                color: AppColors.specialGray,
                letterSpacing: 0.1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


