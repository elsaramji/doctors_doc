import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
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
    );
  }
}
