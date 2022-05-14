import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/ui/home/home_page.dart';
import 'package:pokedex/utils/app_colors.dart';
import 'package:pokedex/utils/app_theme.dart';
import 'package:pokedex/utils/assets.dart';

class SplashPage extends StatefulWidget {
  static const routeName = "/splash_page";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    AppTheme.setAndroidStatusAndNavigationColors(
        statusAndNavigationBarColor: AppColors.primaryColor,
        iconsColor: Brightness.light);
    _redirectToHomePage();
  }

  void _redirectToHomePage() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.popAndPushNamed(context, HomePage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.appIcon,
              ),
              SizedBox(
                width: 16.w,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'POKEMEN',
                    style: TextStyle(
                        letterSpacing: 2, color: Colors.white, fontSize: 16.sp),
                  ),
                  Text('Pokedex',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 44.sp,
                          fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
