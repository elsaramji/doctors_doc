

import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_social_Buttons.dart';
import 'package:flutter/material.dart';
import 'package:doctors_doc/config/images/images_path.dart';

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
