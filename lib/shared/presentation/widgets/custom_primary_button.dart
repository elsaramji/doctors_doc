import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A custom primary button widget that can be used throughout the application.
/// It is a stateless widget that takes an optional callback function and a text string.
/// This button is styled with a rounded rectangle shape, a minimum size, and a primary color background.
/// /// The button's text is displayed in a semibold style with a white color.
class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const PrimaryButton({this.onPressed, super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.interSemiBold16().copyWith(color: Colors.white),
      ),
      style: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(AppColors.secondaryfillred),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        ),
        minimumSize: WidgetStatePropertyAll(Size(context.width(context), 52.h)),
        backgroundColor: WidgetStatePropertyAll(AppColors.primary100),
      ),
    );
  }
}
