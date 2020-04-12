import 'package:flutter/material.dart';
import 'package:responsive_ui_by_default/Theme/Helpers/layout_helper.dart';
import 'package:responsive_ui_by_default/Theme/Helpers/sbHelper.dart';
import 'package:responsive_ui_by_default/Theme/font_text_theme.dart';

// ORDER
// ThemeStyleManager
// ThemeDataManager
// UtilsManager

ThemeData Function() getThemeData;
FontTextTheme t;

class ThemeStyleManager {
  //  TextStyle Function(BuildContext context, {TextStyle textStyle}) f) =>
  static instantiate(BuildContext context,
      {TextStyle Function({TextStyle textStyle}) f}) {
    if (f == null) {
      t = FontTextTheme.theme(Theme.of(context).textTheme);
    } else {
      t = FontTextTheme(f, Theme.of(context).textTheme);
    }
  }
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
