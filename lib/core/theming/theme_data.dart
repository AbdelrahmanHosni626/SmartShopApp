import 'package:flutter/material.dart';
import 'package:smart_app/core/theming/colors.dart';

class AppTheme {
  static ThemeData appTheme(
      {required bool isDark, required BuildContext context}) {
    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      scaffoldBackgroundColor: isDark ? AppColors.darkScaffold : AppColors.lightScaffold,
      cardColor: isDark ? AppColors.darkCard : AppColors.lightCard,
    );
  }
}
