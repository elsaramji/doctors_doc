
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeMoreHeader extends StatefulWidget {
  final String title;
  final bool? isViewAll;
  const SeeMoreHeader({super.key, required this.title, this.isViewAll});

  @override
  State<SeeMoreHeader> createState() => _SeeMoreHeaderState();
}

class _SeeMoreHeaderState extends State<SeeMoreHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundwhite,
          boxShadow: [
            BoxShadow(
              color: AppColors.textbody.withAlpha(10),
              blurRadius: 30,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            Text(widget.title, style: AppTextStyles.interSemiBold18()),
            Spacer(),
            Visibility(
              visible: widget.isViewAll ?? false,
              child: Text(
                "View All",
                style: AppTextStyles.interRegular12(
                  color: AppColors.primary100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

