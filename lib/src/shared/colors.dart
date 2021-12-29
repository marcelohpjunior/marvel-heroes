import 'package:flutter/material.dart';

class MarvelColors {
  static const red = Color.fromRGBO(242, 38, 75, 1);
  static const dark = Color.fromRGBO(49, 49, 64, 1);
  static const grey = Color.fromRGBO(183, 183, 200, 1);
  static const silver = Color.fromRGBO(248, 248, 248, 1);
  static const white = Colors.white;

  static const gradientBlue = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(0, 91, 234, 1),
      Color.fromRGBO(0, 198, 251, 1),
    ],
  );
  static const gradientRed = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(237, 29, 36, 1),
      Color.fromRGBO(237, 31, 105, 1),
    ],
  );
  static const gradientPurple = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(178, 26, 239, 1),
      Color.fromRGBO(117, 121, 255, 1),
    ],
  );
  static const gradientGreen = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(11, 163, 96, 1),
      Color.fromRGBO(60, 186, 146, 1),
    ],
  );
  static const gradientPink = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(255, 126, 179, 1),
      Color.fromRGBO(255, 117, 140, 1),
    ],
  );
}
