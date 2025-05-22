import 'package:doctors_doc/config/routes/constant_routs.dart';
import 'package:doctors_doc/core/context/dimentions.dart';
import 'package:doctors_doc/futures/bording/presentation/widgets/body.dart';
import 'package:doctors_doc/futures/bording/presentation/widgets/button.dart';
import 'package:doctors_doc/futures/bording/presentation/widgets/descreption.dart';
import 'package:doctors_doc/futures/bording/presentation/widgets/header.dart';
import 'package:flutter/material.dart';

class BordingView extends StatelessWidget {
  static String route = ConstantRouts.onbording;
  const BordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
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
            context.verticalSpace(32),
            OnBordingButton(),
          ],
        ),
      ),
    );
  }
}
