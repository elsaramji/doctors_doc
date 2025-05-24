import 'package:doctors_doc/config/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  final String imagePath; // Path to the social media icon image
  final VoidCallback onPressed; // Callback for button press
  const SocialButton({
    super.key,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      child: Image.asset(imagePath, width: 24.w, height: 24.h),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        minimumSize: Size(48.w, 48.h),
        padding: EdgeInsets.all(12),
        backgroundColor: AppColors.text20, // Button background color
        // Elevation for shadow effect
      ),
    );
  }
}
