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
    int listLenght = (MediaQuery.of(context).size.width * 0.7 / 5).floor();
    print((abilityValue / 100 * listLenght).round().toString() +
        '=>' +
        listLenght.toString() +
        '     ' +
        abilityValue.toString());
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Wrap(
              runAlignment: WrapAlignment.end,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 5,
              children: List<Widget>.generate(listLenght, (index) {
                if (index < (abilityValue / 100 * listLenght).round()) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 1.5),
                    color: MarvelColors.white,
                    width: 2,
                    height: 10,
                  );
                }
                if (index > (abilityValue / 100 * listLenght).round()) {
                  return Opacity(
                    opacity: 0.25,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 1.5),
                      color: MarvelColors.white,
                      width: 2,
                      height: 10,
                    ),
                  );
                }
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 1.5),
                  color: MarvelColors.white,
                  width: 2,
                  height: 15,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
