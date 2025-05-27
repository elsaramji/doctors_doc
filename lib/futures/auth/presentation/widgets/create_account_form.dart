import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccountForm extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;
  const CreateAccountForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.phoneController,
  });

  @override
  State<CreateAccountForm> createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFormFeild(
            controller: widget.emailController,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.emailAddress,
            hintText: "Email",
            obscureText: false,
          ),
          context.verticalSpace(16),
          CustomFormFeild(
            controller: widget.passwordController,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.visiblePassword,
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
          context.verticalSpace(16),
          CustomFormFeild(
            controller: widget.phoneController,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.phone,
            hintText: "Phone Number",
            obscureText: false,
            prefix: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 24),
                Icon(Icons.drag_indicator_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
