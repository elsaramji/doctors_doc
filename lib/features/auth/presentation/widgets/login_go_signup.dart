import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// A widget that displays a "Sign Up" link for users who already have an account.
/// This widget is used in the login view to prompt users to sign up if they haven't done so yet.
/// /// The text is styled with a specific font style and color, and the link is interactive,
/// allowing users to tap on it to navigate to the sign-up page.
class GoSignUp extends StatefulWidget {
  final PageController controller;

  const GoSignUp({super.key, required this.controller});

  @override
  State<GoSignUp> createState() => _GoSignUpState();
}

class _GoSignUpState extends State<GoSignUp> {
  int currentIndex = 0;

  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() {
        currentIndex = widget.controller.page?.round().toInt() ?? 0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Already have an account yet? ",
        style: AppTextStyles.interRegular11().copyWith(
          color: AppColors.text100,
        ),
        children: [
          TextSpan(
            text: currentIndex == 0 ? "Sign Up" : "Sign In",
            style: AppTextStyles.interSemiBold11().copyWith(
              color: AppColors.primary100,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                if (currentIndex == 0) {
                  widget.controller.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  widget.controller.animateToPage(
                    0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
          ),
        ],
      ),
    );
  }
}
