

import 'package:doctors_doc/core/extensions/dimentions.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_social_Buttons.dart';
import 'package:flutter/material.dart';
import 'package:doctors_doc/config/images/images_path.dart';


/// A widget that displays social login buttons for Facebook and Google.
/// This widget is used in the login view to allow users to log in using their social media accounts.
/// /// The buttons are arranged in a row with equal spacing between them.
/// /// The `SocialButton` widget is a custom button that takes an image path and an onPressed callback.
/// /// The `LoginSocialButtons` widget is a stateless widget that builds the row of social buttons.
class LoginSocialButtons extends StatelessWidget {
  const LoginSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(
          imagePath: Assets.assetsImagesIconsFacebook,
          onPressed: () {},
        ),
        context.horizontalSpace(16),
        SocialButton(
          imagePath: Assets.assetsImagesIconsGoogel,
          onPressed: () {},
        ),
      ],
    );
  }
}
