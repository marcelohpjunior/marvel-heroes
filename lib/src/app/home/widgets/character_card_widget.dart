import 'package:flutter/material.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

class CharecterCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final String scrImage;
  final String realName;
  final String heroName;
  final void Function()? onTap;

  const CharecterCard({
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
          InkWell(
            onTap: onTap,
            child: Container(
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
                    0.5,
                    1,
                  ],
                ),
              ),
              height: 240,
              width: 147,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15, left: 10, bottom: 10),
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
                SizedBox(
                  width: 80,
                  child: Text(
                    heroName,
                    style: const TextStyle(
                      fontFamily: 'Gilroy',
                      color: MarvelColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
