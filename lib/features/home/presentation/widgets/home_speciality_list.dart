import 'package:doctors_doc/config/themes/texts_styles.dart';
import 'package:doctors_doc/features/home/data/models/specialty_model.dart';
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
          Row(
            children: [
              Text("Doctor Speciality", style: AppTextStyles.interSemiBold18()),
              Spacer(),
              /* Text(
                "View All",
                style: AppTextStyles.interRegular12().copyWith(
                  color: AppColors.primary100,
                ),
              ),*/
            ],
          ),
          SizedBox(height: 16.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 0.075.sw,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                specialtyList.length,
                (index) =>
                    SpecialityWidget(specialtyEntity: specialtyList[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
