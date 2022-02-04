import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

class CharacterCaracteristicItem extends StatelessWidget {
  final String assetIcon;
  final String text;
  const CharacterCaracteristicItem(
      {Key? key, required this.assetIcon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            assetIcon,
            color: MarvelColors.white,
          ),
          Text(
            text,
            style: const TextStyle(
              color: MarvelColors.white,
              fontSize: 14,
              fontFamily: 'Gilroy-Medium',
            ),
          ),
        ],
      ),
    );
  }
}
