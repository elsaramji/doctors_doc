import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';
import 'texts_styles.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.primary100,
      scaffoldBackgroundColor: AppColors.backgroundwhite,
      colorScheme: ColorScheme.light(
        primary: AppColors.primary100,
        onPrimary: AppColors.text10,
        secondary: AppColors.primary80,
        onSecondary: AppColors.text10,
        surface: AppColors.primarySurface,
        onSurface: AppColors.text100,
        error: AppColors.secondaryfillred,
        onError: AppColors.text10,
        brightness: Brightness.light,
      ),
      textTheme: TextTheme(
        displayLarge: AppTextStyles.interBold36(),
        displayMedium: AppTextStyles.interBold32(),
        displaySmall: AppTextStyles.interBold30(),
        headlineLarge: AppTextStyles.interBold24(),
        headlineMedium: AppTextStyles.interBold20(),
        headlineSmall: AppTextStyles.interBold18(),
        titleLarge: AppTextStyles.interSemiBold18(),
        titleMedium: AppTextStyles.interSemiBold16(),
        titleSmall: AppTextStyles.interSemiBold14(),
        bodyLarge: AppTextStyles.interRegular16(),
        bodyMedium: AppTextStyles.interRegular14(),
        bodySmall: AppTextStyles.interRegular12(),
        labelLarge: AppTextStyles.interMedium16(),
        labelMedium: AppTextStyles.interMedium14(),
        labelSmall: AppTextStyles.interMedium12(),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundwhite,
        elevation: 0,
        scrolledUnderElevation: 0.5,
        iconTheme: IconThemeData(color: AppColors.text90, size: 24.sp),
        titleTextStyle: AppTextStyles.interSemiBold20(color: AppColors.text100),
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary100,
          foregroundColor: AppColors.text10,
          textStyle: AppTextStyles.interMedium16(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
          elevation: 2,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.primarySurface,
        hintStyle: AppTextStyles.interRegular14(color: AppColors.text60),
        labelStyle: AppTextStyles.interRegular14(color: AppColors.text80),
        prefixIconColor: AppColors.text60,
        suffixIconColor: AppColors.text60,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.primary100, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.secondaryfillred, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.secondaryfillred, width: 2.0),
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 1,
        color: AppColors.backgroundwhite,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
          side: BorderSide(color: AppColors.text40, width: 0.5),
        ),
      ),
    );
  }
}