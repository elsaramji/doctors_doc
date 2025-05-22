import 'package:doctors_doc/config/images/images_path.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnBordingBody extends StatelessWidget {
  const OnBordingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 491.h,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            Assets.assetsImagesOnBordingBackground,
            fit: BoxFit.fill,
          ),
          Image.asset(
            Assets.assetsImagesOnBordingDoctor,
            fit: BoxFit.fill,
          ),
          Positioned.fill(
            top: 235.h,
    
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Best Doctor\nAppointment App",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.interBold32.copyWith(
                    color: AppColors.primary100,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.2, 1],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.white, Colors.white.withAlpha(0)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
