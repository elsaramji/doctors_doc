import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/create_account_form.dart';
import 'package:doctors_doc/futures/auth/presentation/widgets/signup_header.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';

class CreateAccountbyEmailView extends StatelessWidget {
  const CreateAccountbyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Vertical space at the top
          context.verticalSpace(50),
          // Create account header widget
          CreateAccountTextHeader(),
          // Vertical space after the header
          context.verticalSpace(17),
          //
          CreateAccountForm(),
          context.verticalSpace(32),
          PrimaryButton(text: "Sign Up", onPressed: () {}),
        ],
      ),
    );
  }
}
