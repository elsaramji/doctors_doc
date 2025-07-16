import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Dimentions on BuildContext {
  height(BuildContext con) => MediaQuery.sizeOf(con).height;
  width(BuildContext con) => MediaQuery.sizeOf(con).width;

  verticalSpace(double height) => SizedBox(height: height.h);
  horizontalSpace(double width) => SizedBox(width: width.w);
}
