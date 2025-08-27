import 'package:doctors_doc/features/home/domain/entities/doctor_entity.dart';

abstract class SpecialtyEntity {
  final int id;
  final String name;
  final List<DoctorEntity>? doctors;

  SpecialtyEntity({
    required this.name,
    required this.id,
    this.doctors,
  });
}
