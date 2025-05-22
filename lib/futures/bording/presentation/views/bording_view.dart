import 'package:doctors_doc/config/images/images_path.dart';
import 'package:doctors_doc/config/routes/constant_routs.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BordingView extends StatelessWidget {
  static String route = ConstantRouts.onbording;
  const BordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: [
            context.verticalSpace(21),
            Row(
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
            ),
            context.verticalSpace(40),
            SizedBox(
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
            ),

            context.verticalSpace(18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Text(
                "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                textAlign: TextAlign.center,
                style:
                    AppTextStyles.interRegular12
                      ..copyWith(color: AppColors.textbody),
              ),
            ),

            context.verticalSpace(32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: TextButton(
                onPressed: () {},
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
            ),
          ],
        ),
      ),
    );
  }
}
