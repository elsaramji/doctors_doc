
import 'package:doctors_doc/config/images/images_path.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 30.h,
          child: Container(
            height: 167.h,
            child: Image.asset(
              Assets.assetsImagesOnBordingPatient,
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.only(right: 16.w),
          alignment: Alignment.centerRight,
          width: 1.sw,
          height: 197.h,
          child: Image.asset(Assets.assetsImagesDoctorHome, fit: BoxFit.fill),
        ),
        Positioned(
          top: 30.h,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and\nschedule with\nnearest doctor",
                  style: AppTextStyles.interMedium18().copyWith(
                    color: AppColors.text10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
