import 'package:flutter/material.dart';
import 'package:responsive_ui/Theme/Helpers/layout_helper.dart';
import 'package:responsive_ui/Theme/Helpers/sbHelper.dart';
import 'package:responsive_ui/Theme/font_text_theme.dart';

// ORDER
// ThemeStyleManager
// ThemeDataManager
// UtilsManager

ThemeData Function() getThemeData;
FontTextTheme t;

class ThemeStyleManager {
  static instantiate(
          TextStyle Function({TextStyle textStyle}) f, BuildContext context) =>
      t = FontTextTheme(f, Theme.of(context).textTheme);
}

class ThemeDataManager {
  static instantiate(BuildContext context) =>
      getThemeData = giver(Theme.of(context));
}

class UtilsManager {
  static instantiate(BuildContext context) {
    final mediaQueryGiver = giver(MediaQuery.of(context));
    final dt = getDeviceType(mediaQueryGiver());
    final w = getWidth(mediaQueryGiver());
    final h = getHeight(mediaQueryGiver());

    Sizer.instantiate(dt, w, h);
  }
}

A Function() giver<A>(A a) => () => a;
