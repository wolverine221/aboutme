import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
import '../constants/app_textstyle.dart';

class ConstantWidget{
  Padding BoxWidget(Size size, Widget child) {
    return Padding(
      padding: EdgeInsets.all(25.r),
      child: Container(
          height: size.height,
          decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.all(Radius.circular(20.r))),
          child: child),
    );
  }

  Widget bulletPoints(String point) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text("-${point}",
          style: AppTextStyles.displayMedium
              .copyWith(color: AppColors.neutral, fontSize: 20)),
    );
  }
}