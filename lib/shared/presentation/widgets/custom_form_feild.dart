import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormFeild extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;

  const CustomFormFeild({
    super.key,
    this.controller,
    required this.textInputAction,
    required this.textInputType,
    this.validator,
    required this.hintText,
    required this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      textInputAction: TextInputAction.done,
      controller: controller,
      validator: validator,
      obscureText: obscureText,

      cursorColor: AppColors.primary100,
      style: AppTextStyles.interMedium14.copyWith(
        color: AppColors.text100,
        letterSpacing: 0,

        decorationThickness: 0,
      ),
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        suffixIcon: suffixIcon,

        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        hintStyle: AppTextStyles.interMedium14.copyWith(
          color: AppColors.text100,
          decoration: TextDecoration.none,
          letterSpacing: 0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColors.text30, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColors.primary100, width: 1.w),
        ),
      ),
    );
  }
}
