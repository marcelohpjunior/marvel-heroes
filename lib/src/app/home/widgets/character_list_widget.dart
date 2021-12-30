import 'package:flutter/material.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

import 'character_card_widget.dart';

class CharecterList extends StatelessWidget {
  const CharecterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 50, bottom: 10),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Heróis",
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: MarvelColors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                InkWell(
                  onTap: () => print("Ver Tudo"),
                  child: SizedBox(
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Ver tudo",
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            color: MarvelColors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 240,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              CharecterCard(
                heroName: "Homem Aranha",
                realName: "Peter Parker",
                scrImage: 'assets/chars/spider-man.png',
                margin: const EdgeInsets.symmetric(horizontal: 5),
                onTap: () => print("Homem Aranha"),
              ),
              CharecterCard(
                heroName: "Pantera Negra",
                realName: "T'Challa",
                scrImage: 'assets/chars/black-panther.png',
                margin: const EdgeInsets.symmetric(horizontal: 5),
                onTap: () => print("Pantera"),
              ),
              CharecterCard(
                heroName: "Homem de Ferro",
                realName: "Tony Stark",
                scrImage: 'assets/chars/iron-man.png',
                margin: const EdgeInsets.symmetric(horizontal: 5),
                onTap: () => print("Homem de Ferro"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
