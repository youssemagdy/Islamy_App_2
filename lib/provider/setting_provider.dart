import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier{

  ThemeMode theme = ThemeMode.light;

  void changeTheme (ThemeMode newTheme) {
    if (theme == newTheme) return;
    theme = newTheme;
    notifyListeners();
    saveTheme(newTheme);
  }

  String language = "en";

  void changeLanguage (String newLanguage) {
    if (language == newLanguage) return;
    language = newLanguage;
    notifyListeners();
  }

  SharedPreferences? sharedPreferences;
  // function save data
  Future<void> saveTheme(ThemeMode newTheme) async {
    String themeNew = newTheme == ThemeMode.dark ? 'dark' : 'light';
    await sharedPreferences!.setString('theme', themeNew);
  }

  // function retrieve data
  String? getTheme(){
    return sharedPreferences!.getString('theme');
  }

  // function load theme data
  Future<void> loadThemeData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    String? oldTheme = getTheme();
    if (oldTheme != null){
      theme = oldTheme == 'dark' ? ThemeMode.dark : ThemeMode.light;
    }
  }
}