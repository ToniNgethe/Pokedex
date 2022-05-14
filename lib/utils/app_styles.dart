import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/utils/app_colors.dart';

class AppStyles {
  static  TextStyle textTitle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black
  );

  static  TextStyle normalTextStyle = TextStyle(
      fontSize: 14.sp,
      color: AppColors.primaryTextColor
  );
}