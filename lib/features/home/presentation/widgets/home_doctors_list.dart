
import 'package:doctors_doc/features/home/presentation/widgets/doctor_cart_home.dart';
import 'package:flutter/material.dart';

class HomeDoctorsList extends StatelessWidget {
  const HomeDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (index, context) => DoctorCard(),
      itemCount: 20,
      
    );
  }
}

