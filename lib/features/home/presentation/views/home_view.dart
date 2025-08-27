import 'package:doctors_doc/config/routes/constant_routs.dart';
import 'package:doctors_doc/config/themes/colors.dart';
import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:doctors_doc/features/home/presentation/widgets/home_app_bar.dart';
import 'package:doctors_doc/features/home/presentation/widgets/home_banner_view.dart';
import 'package:doctors_doc/features/home/presentation/widgets/home_bottom_app_bar.dart';
import 'package:doctors_doc/features/home/presentation/widgets/home_doctors_list.dart';
import 'package:doctors_doc/features/home/presentation/widgets/home_speciality_list.dart';
import 'package:doctors_doc/features/home/presentation/widgets/see_more_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  static final routeName = ConstantRouts.home;
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundwhite,
      body: Container(
        width: 1.sw,
        height: 1.sh - 80.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            HomeAppBar(userName: "John Doe"),
            HomeBanner(),
            HomeSpecialityList(),
            SeeMoreHeader(title: "Recommendtion Doctors", isViewAll: true),
            Expanded(child: CustomScrollView(slivers: [HomeDoctorsList()])),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: HomeBottomBar(),
    );
  }
}
