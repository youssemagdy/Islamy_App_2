import 'dart:js_util';

import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{

  ThemeMode theme = ThemeMode.light;

  void changeTheme (ThemeMode newTheme) {
    if (theme == newTheme) return;
    theme = newTheme;
    notifyListeners();
  }

  String language = "en";

  void changeLanguage (String newLanguage) {
    if (language == newLanguage) return;
    language = newLanguage;
    notifyListeners();
  }
}