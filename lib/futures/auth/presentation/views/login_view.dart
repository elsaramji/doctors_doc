import 'package:doctors_doc/config/routes/constant_routs.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  static String route = ConstantRouts.login;
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              context.verticalSpace(50),
              LoginTextHeader(),
              context.verticalSpace(36),
              CustomFormFeild(
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  return null;
                },
                hintText: "Email",
                obscureText: false,
              ),
              context.verticalSpace(16),
              CustomFormFeild(
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  return null;
                },
                hintText: "Password",
                obscureText: isObscure,
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: GestureDetector(
                    onTap: () {
                      isObscure = !isObscure;
                      setState(() {});
                    },
                    child: Icon(
                      size: 24,
                      isObscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.text100,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginTextHeader extends StatelessWidget {
  const LoginTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back",
            style: AppTextStyles.interBold24.copyWith(
              color: AppColors.primary100,
            ),
          ),
          Text(
            "We're excited to have you back, can't wait to see what you've been up to since you last \nlogged in.",
            style: AppTextStyles.interRegular14.copyWith(
              color: AppColors.textbody,
              letterSpacing: 0.2,
              height: 1.8,
            ),
          ),
        ],
      ),
    );
  }
}
