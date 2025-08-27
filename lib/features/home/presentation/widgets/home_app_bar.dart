import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  const HomeAppBar({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 72.h,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: ListTile(
        minVerticalPadding: 16.h,
        title: Text(userName, style: AppTextStyles.interBold18()),
        subtitle: Text(
          "How Are you Today?",
          style: AppTextStyles.interRegular11().copyWith(
            color: AppColors.text80,
          ),
        ),
        trailing: Container(
          width: 48.w,
          height: 48.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.text20,
          ),
          child: Icon(
            Icons.notifications_none,
            color: AppColors.text100,
            size: 24.sp,
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(72.h);
}
