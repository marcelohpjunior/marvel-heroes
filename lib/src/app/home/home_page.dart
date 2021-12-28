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
      body: Container(),
    );
  }
}
