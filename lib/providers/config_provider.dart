import 'package:flutter/material.dart';

/// observable ???
/// is a
/// config provider is a changeNotifier
class ConfigProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  bool get isDark => currentTheme == ThemeMode.dark;

  String currentLang = "en";

  bool get isEnglish => currentLang == "en";

  void changeAppTheme(ThemeMode newTheme) {
    // light
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  void changAppLang(String newLang) {
    if (currentLang == newLang) return;
    currentLang = newLang;
    notifyListeners();
  }
}
