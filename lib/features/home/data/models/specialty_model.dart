import 'package:doctors_doc/config/images/images_path.dart';
import 'package:doctors_doc/features/home/domain/entities/specialty_entity.dart';

class SpecialtyModel extends SpecialtyEntity {
  SpecialtyModel({required String name, required String image})
    : super(name: name, image: image);
}

List<SpecialtyModel> specialtyList = [
  SpecialtyModel(
    image: Assets.assetsImagesIconsSpecialityDermatology,
    name: "Dermatology",
  ),
  SpecialtyModel(
    image: Assets.assetsImagesIconsSpecialityPediatrics,
    name: "Pediatrics",
  ),
  SpecialtyModel(
    image: Assets.assetsImagesIconsSpecialityPsychiatry,
    name: "Psychiatry",
  ),
  SpecialtyModel(
    image: Assets.assetsImagesIconsSpecialityNeurology,
    name: "Neurology",
  ),
];
