import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier {
  var _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode; //initial theme

  void changeTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
