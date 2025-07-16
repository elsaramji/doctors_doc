import 'package:doctors_doc/config/routes/constant_routs.dart';
import 'package:doctors_doc/core/extensions/dimentions.dart';
import 'package:doctors_doc/features/bording/presentation/functions/button_fun.dart';
import 'package:doctors_doc/features/bording/presentation/widgets/body.dart';
import 'package:doctors_doc/features/bording/presentation/widgets/descreption.dart';
import 'package:doctors_doc/features/bording/presentation/widgets/header.dart';
import 'package:doctors_doc/shared/presentation/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BordingView extends StatelessWidget {
  static String route = ConstantRouts.onbording;
  const BordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              context.verticalSpace(21),
              // DocdocHeader
              DocHeader(),
              // OnBordingBody
              context.verticalSpace(40),
              OnBordingBody(),
              // OnBordingDescription
              context.verticalSpace(18),
              OnBordingDescription(),

              // OnBordingButton
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
                child: PrimaryButton(
                  onPressed: () {
                    getsarted(context);
                  },
                  text: 'Get Started',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
