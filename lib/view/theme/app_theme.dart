import 'package:ai_assistant_app/view/theme/color_manger.dart';
import 'package:flutter/material.dart';

ThemeData getTheme(bool? isDark) {
  if (isDark == true) return _darkTheme;
  return _lightTheme;
}

final _lightTheme = ThemeData(
  scaffoldBackgroundColor: ColorsManger.white,
);
final _darkTheme = ThemeData(
  scaffoldBackgroundColor: ColorsManger.black,
);
