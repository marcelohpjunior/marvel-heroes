import 'package:flutter/material.dart';

class CharacterMovieCard extends StatelessWidget {
  final double height;
  final double width;

  final EdgeInsetsGeometry? margin;
  final String scrImage;

  final void Function()? onTap;

  const CharacterMovieCard({
    Key? key,
    required this.scrImage,
    this.onTap,
    this.margin,
    this.height = 240,
    this.width = 147,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            scrImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
