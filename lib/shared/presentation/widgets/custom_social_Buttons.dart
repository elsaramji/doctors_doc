import 'package:doctors_doc/config/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A custom social button widget that displays a social media icon.
/// This widget is used in the login view to allow users to log in using their social media accounts.
/// /// The button is styled with a circular shape, a minimum size, and a background color.
/// /// The `imagePath` parameter is the path to the social media icon image,
/// and the `onPressed` parameter is a callback function that is called when the button is pressed.
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
        overlayColor: AppColors.primary100,
        shape: CircleBorder(),
        minimumSize: Size(48.w, 48.h),
        padding: EdgeInsets.all(12),
        backgroundColor: AppColors.text20, // Button background color
        // Elevation for shadow effect
      ),
    );
  }
}
