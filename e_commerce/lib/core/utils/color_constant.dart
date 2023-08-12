import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color gray90033 = fromHex('#331d1d1d');

  static Color green900 = fromHex('#10762c');

  static Color green800 = fromHex('#12823c');

  static Color gray80001 = fromHex('#434343');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#f8f8f8');

  static Color teal400 = fromHex('#41a895');

  static Color green90019 = fromHex('#19265c1a');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color black90001 = fromHex('#010101');

  static Color greenA700 = fromHex('#1cb563');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#979797');

  static Color blueGray90002 = fromHex('#313131');

  static Color blueGray90001 = fromHex('#292d32');

  static Color green90033 = fromHex('#33265c1a');

  static Color blueGray900 = fromHex('#352641');

  static Color gray8007f = fromHex('#7f444444');

  static Color black90026 = fromHex('#26000000');

  static Color gray90002 = fromHex('#1d1d1d');

  static Color gray600 = fromHex('#7d7d7d');

  static Color gray700 = fromHex('#5d5d5d');

  static Color gray90003 = fromHex('#2d2828');

  static Color gray90004 = fromHex('#181818');

  static Color gray500 = fromHex('#929292');

  static Color gray90005 = fromHex('#241332');

  static Color blueGray100 = fromHex('#cecece');

  static Color gray60001 = fromHex('#747474');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#444444');

  static Color gray90066 = fromHex('#661d1d1d');

  static Color gray900 = fromHex('#242424');

  static Color gray90001 = fromHex('#1c1f26');

  static Color blueGray90003 = fromHex('#2b2b2b');

  static Color green9007f = fromHex('#7f10762c');

  static Color whiteA7000f = fromHex('#0fffffff');

  static Color green50 = fromHex('#e1fbde');

  static Color gray90006 = fromHex('#131313');

  static Color amber30066 = fromHex('#66ffd15c');

  static Color gray300 = fromHex('#e5e5e5');

  static Color gray100 = fromHex('#f5f6fb');

  static Color black90033 = fromHex('#33000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
