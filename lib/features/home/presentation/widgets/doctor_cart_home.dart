import 'package:doctors_doc/config/images/images_path.dart';
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
                image: AssetImage(Assets.assetsImagesOnBordingPatient),
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
              Text(
                "General Practitioner",
                style: AppTextStyles.interRegular12(),
              ),
              SizedBox(height: 8.h),
            ],
          ),
        ],
      ),
    );
  }
}
