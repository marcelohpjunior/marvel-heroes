import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

class CircularSvg extends StatelessWidget {
  String pathSvg;
  double height;
  double width;
  Color? colorSvg;
  Color? backgroundColor;
  Gradient? backgroundGradient;
  void Function()? onTap;

  CircularSvg(
      {Key? key,
      required this.pathSvg,
      required this.height,
      required this.width,
      this.colorSvg,
      this.backgroundColor,
      this.backgroundGradient,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: backgroundGradient,
            color: backgroundColor),
        child: SvgPicture.asset(
          pathSvg,
          color: colorSvg ?? Colors.white,
        ),
      ),
    );
  }
}
