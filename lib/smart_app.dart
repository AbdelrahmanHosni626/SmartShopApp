import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/logic/app_states.dart';
import 'package:smart_app/core/routing/app_router.dart';
import 'package:smart_app/core/routing/routes.dart';
import 'package:smart_app/core/theming/theme_data.dart';

import 'core/logic/app_cubit.dart';

class SmartApp extends StatelessWidget {
  final AppRouter appRouter;
  const SmartApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => AppCubit()..getThemeMode(),
        child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = AppCubit.get(context);
            return MaterialApp(
              theme: AppTheme.appTheme(isDark: cubit.getIsDarkMode, context: context),
              debugShowCheckedModeBanner: false,
              onGenerateRoute: appRouter.generateRoute,
              initialRoute: Routes.homeScreen,
            );
          }
        ),
      ),
    );
  }
}
