import 'package:flutter/material.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

class CharacterCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final String scrImage;
  final String realName;
  final String heroName;
  final void Function()? onTap;

  const CharacterCard({
    Key? key,
    required this.scrImage,
    required this.realName,
    required this.heroName,
    this.onTap,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              scrImage,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
                stops: [
                  0.3,
                  1,
                ],
              ),
            ),
            height: 240,
            width: 147,
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              width: 147,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    realName,
                    style: const TextStyle(
                      fontFamily: 'Gilroy',
                      color: MarvelColors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    heroName.replaceFirst(' ', '\n'),
                    style: const TextStyle(
                      fontFamily: 'Gilroy',
                      color: MarvelColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
