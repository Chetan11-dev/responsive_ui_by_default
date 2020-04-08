import 'package:flutter/material.dart';

class FontTextTheme {
  TextStyle display4;
  TextStyle display3;
  TextStyle display2;
  TextStyle display1;
  TextStyle headline;
  TextStyle title;
  TextStyle subhead;
  TextStyle body2;
  TextStyle body1;
  TextStyle caption;
  TextStyle button;
  TextStyle subtitle;
  TextStyle overline;
  TextTheme textTheme;
  FontTextTheme(
      TextStyle Function({
    TextStyle textStyle,
  })
          f,
      TextTheme t) {
    display4 = f(textStyle: t.display4);
    display3 = f(textStyle: t.display3);
    display2 = f(textStyle: t.display2);
    display1 = f(textStyle: t.display1);
    headline = f(textStyle: t.headline);
    title = f(textStyle: t.title);
    subhead = f(textStyle: t.subhead);
    body2 = f(textStyle: t.body2);
    body1 = f(textStyle: t.body1);
    caption = f(textStyle: t.caption);
    button = f(textStyle: t.button);
    subtitle = f(textStyle: t.subtitle);
    overline = f(textStyle: t.overline);

    textTheme = TextTheme(
      display4: display4,
      display3: display3,
      display2: display2,
      display1: display1,
      headline: headline,
      title: title,
      subhead: subhead,
      body2: body2,
      body1: body1,
      caption: caption,
      button: button,
      subtitle: subtitle,
      overline: overline,
    );
  }
}
