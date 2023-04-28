import 'package:flutter/cupertino.dart';


import '../sevices/dark_theme_prefs.dart';

class DarkThemePovider with ChangeNotifier {
  DarkThemePrefs darkThemePrefs = DarkThemePrefs();

  bool _darktheme = false;
  bool get getDarkTheme => _darktheme;

  set setDarkTheme(bool value) {
    _darktheme = value;
    darkThemePrefs.setDarkTheme(value);
    notifyListeners();
    
  }
}
