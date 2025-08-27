import 'package:doctors_doc/config/images/images_path.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 126.h,
      child: Row(
        children: [
          Container(
            width: 110.w,
            height: 110.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              image: DecorationImage(
                image: AssetImage(Assets.assetsImagesBackgroundHomeBordering),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dr. John Doe", style: AppTextStyles.interSemiBold16()),
              Row(
                children: [
                  Text(
                    "Speciality|",
                    style: AppTextStyles.interMedium12(
                      color: AppColors.textBody,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    "Price\$200",
                    style: AppTextStyles.interMedium12(
                      color: AppColors.textBody,
                    ),
                  ),
                ],
              ),

              //address
              Text(
                "21, Main Street, New York, NY 10001",
                style: AppTextStyles.interMedium12(color: AppColors.textBody),
              ),

              SizedBox(height: 8.h),
            ],
          ),
        ],
      ),
    );
  }
}
