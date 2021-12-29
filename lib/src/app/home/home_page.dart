import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        padding: const EdgeInsets.only(left: 10, top: 50),
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
                children: [
                  InkWell(
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: MarvelColors.gradientBlue),
                      child: SvgPicture.asset(
                        'assets/icons/alien.svg',
                        color: MarvelColors.white,
                      ),
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
