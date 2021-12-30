import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_heroes_app/src/app/home/widgets/character_list_widget.dart';
import 'package:marvel_heroes_app/src/app/home/widgets/circular_svg_widget.dart';
import 'package:marvel_heroes_app/src/app/home/widgets/filter_widget.dart';
import 'package:marvel_heroes_app/src/app/home/widgets/character_card_widget.dart';
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
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: MarvelColors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
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
      body: SingleChildScrollView(
        child: Container(
          color: MarvelColors.white,
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Bem vindo ao Marvel Heroes",
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: MarvelColors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Escolha o seu \npersonagem",
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: MarvelColors.dark,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
              const Filter(),
              const CharecterList(),
              const CharecterList(),
              const CharecterList(),
              const CharecterList(),
              const CharecterList(),
            ],
          ),
        ),
      ),
    );
  }
}
