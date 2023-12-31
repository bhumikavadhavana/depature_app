
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/theme_model.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeModel themeModel;

  ThemeProvider({required this.themeModel});

  changeTheme() async {
    themeModel.isDark = !themeModel.isDark;

    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool('appTheme', themeModel.isDark);

    notifyListeners();
  }
}