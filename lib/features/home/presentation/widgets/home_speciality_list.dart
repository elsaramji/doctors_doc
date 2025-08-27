import 'package:doctors_doc/features/home/presentation/models/specialty_ui_model.dart';
import 'package:doctors_doc/features/home/presentation/views/home_view.dart';
import 'package:doctors_doc/features/home/presentation/widgets/see_more_header.dart';
import 'package:doctors_doc/features/home/presentation/widgets/speciality_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSpecialityList extends StatelessWidget {
  const HomeSpecialityList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        children: [
          SeeMoreHeader(title: "Speciality", isViewAll: false),
          SizedBox(height: 16.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 0.075.sw,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                specialtyList.length,
                (index) =>
                    SpecialityWidget(specialtyUiModel: specialtyList[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
