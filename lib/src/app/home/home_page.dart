import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_heroes_app/src/app/home/widgets/circular_svg_widget.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MarvelColors.white,
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/icons/marvel.svg',
          color: MarvelColors.red,
        ),
        leading: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          onTap: () {
            print("MENU");
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset(
              'assets/icons/menu.svg',
              color: MarvelColors.dark,
            ),
          ),
        ),
        actions: [
          InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            onTap: () {
              print("SEARCH");
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                color: MarvelColors.dark,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: MarvelColors.white,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Bem vindo ao Marvel Heroes",
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: MarvelColors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            const Text(
              "Escolha o seu \npersonagem",
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: MarvelColors.dark,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularSvg(
                    pathSvg: 'assets/icons/hero.svg',
                    height: 50,
                    width: 50,
                    backgroundGradient: MarvelColors.gradientBlue,
                    onTap: () => print("HERO"),
                  ),
                  CircularSvg(
                    pathSvg: 'assets/icons/villain.svg',
                    height: 50,
                    width: 50,
                    backgroundGradient: MarvelColors.gradientRed,
                    onTap: () => print("VILLAIN"),
                  ),
                  CircularSvg(
                    pathSvg: 'assets/icons/antihero.svg',
                    height: 50,
                    width: 50,
                    backgroundGradient: MarvelColors.gradientPurple,
                    onTap: () => print("ANTIHERO"),
                  ),
                  CircularSvg(
                    pathSvg: 'assets/icons/alien.svg',
                    height: 50,
                    width: 50,
                    backgroundGradient: MarvelColors.gradientGreen,
                    onTap: () => print("ALIEN"),
                  ),
                  CircularSvg(
                    pathSvg: 'assets/icons/human.svg',
                    height: 50,
                    width: 50,
                    backgroundGradient: MarvelColors.gradientPink,
                    onTap: () => print("HUMAN"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Heróis",
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: MarvelColors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Ver tudo",
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: MarvelColors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 240,
                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 10),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/chars/spider-man.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 15, left: 5, bottom: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Peter Parker",
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      color: MarvelColors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text: "Homem ",
                                      style: TextStyle(
                                        fontFamily: 'Gilroy',
                                        color: MarvelColors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Aranha',
                                          style: TextStyle(
                                            fontFamily: 'Gilroy',
                                            color: MarvelColors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // RichText(
                                  //   text: TextSpan(text: "Homem", children: [
                                  //     TextSpan(
                                  //       "Homem Aranha",
                                  //       style: TextStyle(
                                  //         fontFamily: 'Gilroy',
                                  //         color: MarvelColors.white,
                                  //         fontWeight: FontWeight.bold,
                                  //         fontSize: 20,
                                  //       ),
                                  //     ),
                                  //   ]),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
