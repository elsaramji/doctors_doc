import 'package:doctors_doc/futures/auth/presentation/widgets/craate_account_view.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthViewBuilder extends StatelessWidget {
  const AuthViewBuilder({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.566.sh,

      child: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          // Login by email view
          LoginByEmailView(),

          // Add other login methods here if needed
          CreateAccountbyEmailView(),
        ],
      ),
    );
  }
}
