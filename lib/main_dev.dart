import 'package:doctors_doc/core/di/get_it_injection.dart';
import 'package:doctors_doc/shared/presentation/views/doc_matrial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp());
}
