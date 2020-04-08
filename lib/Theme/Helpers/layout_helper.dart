import 'package:flutter/widgets.dart';

enum DeviceScreenType { Mobile, Tablet, Desktop }

getDeviceType(MediaQueryData mediaQuery) {
  double deviceWidth = getWidth(mediaQuery);

  if (deviceWidth >= 950)
    return DeviceScreenType.Desktop;
  else if (deviceWidth >= 600)
    return DeviceScreenType.Tablet;
  else
    return DeviceScreenType.Mobile;
}

getWidth(MediaQueryData q) => q.size.width;
getHeight(MediaQueryData q) => q.size.height;
