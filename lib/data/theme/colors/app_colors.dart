import 'package:flutter/material.dart';
import 'package:polya_uz/data/controllers/theme_controller.dart';

import 'app_theme_color.dart';

class AppColors {
  static AppThemeColor _BLACK = AppThemeColor(
    lightColor: Colors.black,
  );
  static AppThemeColor _GREEN = AppThemeColor(
    lightColor: Colors.green,
  );
  static AppThemeColor _RED = AppThemeColor(
    lightColor: Colors.red,
  );
  static AppThemeColor BACKGROUND =
      AppThemeColor(lightColor: Colors.white70, darkColor: Colors.black54);
  // Colors for public usage

  static Color MAIN = AppColors.BACKGROUND.get(_themeMode);

  static Color BLACK = AppColors._BLACK.get(_themeMode);

  static Color GREEN = AppColors._GREEN.get(_themeMode);

  static Color RED = AppColors._RED.get(_themeMode);

  static ThemeMode get _themeMode => ThemeController.to.getThemeMode();
}
