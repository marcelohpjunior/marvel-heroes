import 'package:flutter/material.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

class CharacterAbility extends StatelessWidget {
  final String abilityTitle;
  final int abilityValue;
  final EdgeInsetsGeometry? padding;

  const CharacterAbility(
      {Key? key,
      required this.abilityTitle,
      required this.abilityValue,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            abilityTitle,
            style: const TextStyle(
              fontFamily: 'Gilroy-Medium',
              color: MarvelColors.white,
              fontSize: 12,
            ),
          ),
          Text(
            abilityValue.toString(),
            style: const TextStyle(
              fontFamily: 'Gilroy-Medium',
              color: MarvelColors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
