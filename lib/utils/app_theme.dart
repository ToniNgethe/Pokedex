import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/utils/app_colors.dart';

class AppTheme {
  static void setAndroidStatusAndNavigationColors(
      {Color statusAndNavigationBarColor = Colors.white,
      Brightness iconsColor = Brightness.dark}) {
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          systemNavigationBarColor: statusAndNavigationBarColor, // navigation bar color
          statusBarColor: statusAndNavigationBarColor, // status bar color
          statusBarIconBrightness: iconsColor,
          systemNavigationBarIconBrightness: iconsColor));
    }
  }

  static ThemeData themeData(BuildContext context) {
    return ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.white,
            titleTextStyle:
                TextStyle(color: AppColors.primaryTextColor, fontSize: 16.sp),
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.grey)),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.notoSansTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity);
  }
}
