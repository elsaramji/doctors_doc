
import 'package:doctors_doc/config/images/images_path.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocHeader extends StatelessWidget {
  const DocHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.assetsImagesOnBordingDocIcon,
          width: 38.2.w,
          height: 38.2.h,
        ),
        context.horizontalSpace(8),
        Text(
          "Docdoc",
          style: AppTextStyles.interBold24.copyWith(
            color: AppColors.text100,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
