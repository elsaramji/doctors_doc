import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:doctors_doc/features/home/presentation/models/specialty_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityWidget extends StatelessWidget {
  final SpecialtyUiModel specialtyUiModel;
  const SpecialityWidget({super.key, required this.specialtyUiModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56.w,
          height: 56.w,
          margin: EdgeInsets.symmetric(horizontal: 8.w),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primarySurface,
          ),
          child: Center(
            child: Image.asset(
              width: 28.w,
              height: 28.w,
              specialtyUiModel.image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text("${specialtyUiModel.name}", style: AppTextStyles.interMedium12()),
      ],
    );
  }
}
