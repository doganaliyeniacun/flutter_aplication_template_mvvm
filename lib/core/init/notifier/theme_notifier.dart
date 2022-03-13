import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/app_theme_light.dart';

import '../../constants/enums/app_theme_enum.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.instance.theme;
  ThemeData get currentTheme => _currentTheme;

  void changeTheme(AppThemes theme) {
    if (theme == AppThemes.LIGHT) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }
}
