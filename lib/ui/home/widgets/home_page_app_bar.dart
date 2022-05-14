import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/utils/assets.dart';

final homePageAppBar = AppBar(
  centerTitle: true,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(
        Assets.appIcon,
        height: 24,
        width: 24,
      ),
      SizedBox(
        width: 5.w,
      ),
      Text(
        'Pokedex',
        style: TextStyle(
            fontSize: 24.sp, color: Colors.black, fontWeight: FontWeight.bold),
      )
    ],
  ),
);
