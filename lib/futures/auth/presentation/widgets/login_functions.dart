
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/material.dart';

class LoginFuctions extends StatefulWidget {
  const LoginFuctions({super.key});

  @override
  State<LoginFuctions> createState() => _LoginFuctionsState();
}

class _LoginFuctionsState extends State<LoginFuctions> {
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isRememberMe,
          onChanged: (value) {
            setState(() {
              isRememberMe = value ?? false;
            });
          },
          activeColor: AppColors.primary100,
          checkColor: AppColors.backgroundwhite,
          side: BorderSide(color: AppColors.specialGray, width: 1.5),
        ),
        Text(
          "Remember me",
          style: AppTextStyles.interRegular12.copyWith(
            color: AppColors.specialGray,
          ),
        ),
        Spacer(),
        GestureDetector(
          child: Text(
            "Forgot Password?",
            style: AppTextStyles.interRegular12.copyWith(
              color: AppColors.primary100,
            ),
          ),
        ),
      ],
    );
  }
}
