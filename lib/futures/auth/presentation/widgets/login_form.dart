import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
<<<<<<< HEAD
=======
import 'package:doctors_doc/futures/auth/presentation/functions/validator.dart';
>>>>>>> origin/stating
import 'package:doctors_doc/shared/presentation/widgets/custom_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// LoginForm widget is a stateful widget that contains two text fields for email and password.
/// It also includes a visibility toggle for the password field.
/// /// The widget uses a custom form field widget for input fields and handles the visibility of the password field.
class LoginForm extends StatefulWidget {
<<<<<<< HEAD
  const LoginForm({super.key});
=======
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;
  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });
>>>>>>> origin/stating

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomFormFeild(
            controller: widget.emailController,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              return emailValidator(value);
            },
            hintText: "Email",
            obscureText: false,
          ),
          context.verticalSpace(16),
          CustomFormFeild(
            controller: widget.passwordController,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              return passwordValidator(value);
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
    );
  }
}
