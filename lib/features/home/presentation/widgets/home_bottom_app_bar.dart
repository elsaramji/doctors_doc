import 'package:doctors_doc/config/images/images_path.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 105.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withAlpha(5),
            blurRadius: 30,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.backgroundwhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r),
                ),
              ),
              width: 1.sw,
              height: 80.h,

              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home_outlined, size: 24.sp),
                    Icon(Icons.chat_bubble_outline_outlined, size: 24.sp),
                    SizedBox(width: 72.w),
                    Icon(Icons.person_2_outlined, size: 24.sp),
                    Icon(Icons.notifications_none, size: 24.sp),
                  ],
                ),
              ),
            ),
          ),

          Positioned.fill(
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 72.w,
                    height: 72.w,
                    padding: EdgeInsets.all(16.sp),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: AppColors.backgroundwhite,
                        width: 1.72.sp,
                      ),
                      borderRadius: BorderRadius.circular(28.r),
                      color: AppColors.primary100,
                    ),
                    child: Image.asset(
                      width: 24.w,
                      height: 24.h,
                      Assets.assetsImagesIconsSearch,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
