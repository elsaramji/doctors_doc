import 'package:doctors_doc/config/images/images_path.dart';

class SpecialtyUiModel {
  final String image, name;
  SpecialtyUiModel({required this.image, required this.name});
}

List<SpecialtyUiModel> specialtyList = [
  SpecialtyUiModel(
    image: Assets.assetsImagesIconsSpecialityPediatric,
    name: "Pediatrics",
  ),
  SpecialtyUiModel(
    image: Assets.assetsImagesIconsSpecialityPsychiatry,
    name: "Psychiatry",
  ),
  SpecialtyUiModel(
    image: Assets.assetsImagesIconsSpecialityOphthalmology,
    name: "Ophthalmology",
  ),
  SpecialtyUiModel(image: Assets.assetsImagesIconsSpecialityGynecology, name: "Gynecology"),
  SpecialtyUiModel(image: Assets.assetsImagesIconsSpecialityCardiology, name: "Cardiology"),
];
