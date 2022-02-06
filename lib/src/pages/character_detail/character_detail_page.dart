import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes_app/src/models/character_model.dart';
import 'package:marvel_heroes_app/src/pages/character_detail/widgets/character_ability_list_widget.dart';
import 'package:marvel_heroes_app/src/pages/character_detail/widgets/character_biography_widget.dart';
import 'package:marvel_heroes_app/src/pages/character_detail/widgets/character_caracteristics_widget.dart';
import 'package:marvel_heroes_app/src/pages/character_detail/widgets/character_movie_card_widget.dart';
import 'package:marvel_heroes_app/src/pages/character_detail/widgets/character_movie_list_widget.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

class CharacterDetail extends StatefulWidget {
  final Character character;
  const CharacterDetail({Key? key, required this.character}) : super(key: key);

  @override
  _CharacterDetailState createState() => _CharacterDetailState();
}

class _CharacterDetailState extends State<CharacterDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      widget.character.imagePath!,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: MarvelColors.black,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black,
                          ],
                          stops: [
                            0.4,
                            0.8
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.8,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.character.alterEgo!,
                                  style: const TextStyle(
                                    fontFamily: 'Gilroy-Medium',
                                    color: MarvelColors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  widget.character.name!
                                      .replaceFirst(' ', '\n'),
                                  style: const TextStyle(
                                    fontFamily: 'Gilroy',
                                    color: MarvelColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // color: Colors.amber,
                          padding: EdgeInsets.only(
                              bottom:
                                  MediaQuery.of(context).size.height * 0.03),
                          child: CharacterCaracteristics(
                            caracteristics: widget.character.caracteristics!,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: CharacterBiography(
                          biography: widget.character.biography!),
                    ),
                    const Text(
                      'Habilidades',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: MarvelColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CharacterListAbility(
                        abilities: widget.character.abilities!),
                    const Text(
                      'Filmes',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: MarvelColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: CharacterMovieList(
                        movies: widget.character.movies!,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
