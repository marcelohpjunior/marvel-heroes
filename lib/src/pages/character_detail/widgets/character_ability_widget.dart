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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Wrap(
              runAlignment: WrapAlignment.end,
              runSpacing: 5,
              children: List<Widget>.generate(
                100,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  color: MarvelColors.white,
                  width: 2,
                  height: 10,
                ),
              ),
              // children: [
              //   ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     primary: false,
              //     shrinkWrap: true,
              //     physics: const NeverScrollableScrollPhysics(),
              //     itemCount: 50,
              //     itemBuilder: (BuildContext context, int index) {
              //       return Container(
              //         margin: const EdgeInsets.symmetric(horizontal: 1),
              //         color: MarvelColors.white,
              //         width: 2,
              //       );
              //     },
              //   ),
              // ],
            ),
          ),
        ],
      ),
    );
  }
}
