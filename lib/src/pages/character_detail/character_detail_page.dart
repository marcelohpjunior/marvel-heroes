import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marvel_heroes_app/src/models/character_model.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    widget.character.imagePath!,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
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
                          0.1,
                          1
                        ]),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
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
                            fontFamily: 'Gilroy',
                            color: MarvelColors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          widget.character.name!.replaceFirst(' ', '\n'),
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
              ],
            ),
            Container(
              color: Colors.red,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              height: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
            ),
            Container(
              color: Colors.yellow,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
