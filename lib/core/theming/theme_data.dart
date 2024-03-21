import 'package:flutter/material.dart';
import 'package:smart_app/core/theming/colors.dart';

class AppTheme {
  static ThemeData appTheme(
      {required bool isDark, required BuildContext context}) {
    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      scaffoldBackgroundColor: isDark ? AppColors.darkScaffold : AppColors.lightScaffold,
      cardColor: isDark ? AppColors.darkCard : AppColors.lightCard,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: isDark ? AppColors.darkScaffold : AppColors.lightScaffold,
        selectedItemColor: isDark ? Colors.deepOrange : Colors.black,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(size: 35.0),
        elevation: 0.0,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: isDark ? AppColors.darkScaffold : AppColors.lightScaffold,
        titleTextStyle: TextStyle(
          color: isDark ? Colors.white : Colors.black,
        )
      )
    );
  }
}