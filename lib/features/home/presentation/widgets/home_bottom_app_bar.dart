import 'package:doctors_doc/config/images/images_path.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
                    NavBarIcon(
                      icon_path: Assets.assetsImagesIconsBottomNavBarHome,
                    ),

                    NavBarIcon(
                      icon_path:
                          Assets.assetsImagesIconsBottomNavBarMessageText,
                    ),
                    SizedBox(width: 72.w),
                    NavBarIcon(
                      icon_path: Assets.assetsImagesIconsBottomNavBarCalendar2,
                    ),
                    Icon(Icons.person_2_rounded, size: 24.sp),
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
                    padding: EdgeInsets.all(24.sp),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: AppColors.backgroundwhite,
                        width: 1.72.sp,
                      ),
                      borderRadius: BorderRadius.circular(28.r),
                      color: AppColors.primary100,
                    ),
                    child: SvgPicture.asset(
                      width: 24.sp,
                      height: 24.sp,
                      Assets.assetsImagesIconsBottomNavBarSearchNormal,
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

class NavBarIcon extends StatelessWidget {
  final String icon_path;
  final Color? color;
  const NavBarIcon({super.key, required this.icon_path, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon_path,
      width: 24.sp,
      height: 24.sp,
      fit: BoxFit.fill,
      colorFilter: ColorFilter.mode(
        color ?? AppColors.text100,
        BlendMode.srcIn,
      ),
    );
  }
}
