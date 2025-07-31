import 'package:flutter/material.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

final ThemeData light = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Appcolors.Kbackground,
  appBarTheme: AppBarTheme(
    backgroundColor: Appcolors.Kprimiry,
    foregroundColor: Appcolors.KText,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Appcolors.KText),
    bodyMedium: TextStyle(color: Appcolors.KText),
  ),
);

final ThemeData DarkTjeme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF121212),
  appBarTheme: AppBarTheme(
    backgroundColor: Appcolors.Kprimiry,
    foregroundColor: Appcolors.Kprimiry,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Appcolors.Kwhite),
    bodyMedium: TextStyle(color: Appcolors.Kwhite),
  ),
);
