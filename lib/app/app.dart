import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/app/routes.dart';
import 'package:pokedex/data/bloc/pokemon_cubit.dart';
import 'package:pokedex/di/injector.dart';
import 'package:pokedex/ui/splash/splash_page.dart';
import 'package:pokedex/utils/app_theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MultiBlocProvider(
        providers: [BlocProvider(create: (ctx) => getIt<PokemonCubit>())],
        child: MaterialApp(
          builder: (context, widget) {
            //add this line
            ScreenUtil.setContext(context);
            return MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'Pokedex',
          theme: AppTheme.themeData(context),
          initialRoute: SplashPage.routeName,
          routes: routes,
        ),
      ),
    );
  }
}
