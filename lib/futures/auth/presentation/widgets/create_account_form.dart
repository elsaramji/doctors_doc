import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccountForm extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;
  final GlobalKey<FormState> formKey;
  // Constructor to initialize the controllers
  const CreateAccountForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.phoneController,
    required this.formKey,
  });

  @override
  State<CreateAccountForm> createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  bool isObscure = true;
  String selectedCountryCode = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      autovalidateMode: AutovalidateMode.onUnfocus,
      child: Column(
        children: [
          CustomFormFeild(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Email is required";
              }
              if (!RegExp(
                r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
              ).hasMatch(value)) {
                return "Please enter a valid email address";
              }
              return null;
            },
            controller: widget.emailController,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.emailAddress,
            hintText: "Email",
            obscureText: false,
          ),
          context.verticalSpace(16),
          CustomFormFeild(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Password is required";
              }
              if (value.length < 6) {
                return "Password must be at least 6 characters";
              }
              // Add more validation if needed
              return null;
            },
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Phone number is required";
              }
              if (value.length < 10) {
                return "Phone number must be at least 10 digits";
              }
              // Add more validation if needed
              return null;
            },
            controller: widget.phoneController,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.phone,
            hintText: "Phone Number",
            obscureText: false,
            prefix: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 24),
                DropdownButton(
                  underline: const SizedBox(),
                  value: selectedCountryCode,
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                  items: [
                    DropdownMenuItem(child: Text("Select Country"), value: ""),
                    DropdownMenuItem(child: Text("Egypt"), value: "+20"),
                    DropdownMenuItem(child: Text("UAE"), value: "+2"),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedCountryCode = value ?? "";
                      widget.phoneController.text =
                          "$selectedCountryCode${widget.phoneController.text.replaceAll(' ', '')}";
                    });
                  },
                ),
                SizedBox(width: 8.w),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
