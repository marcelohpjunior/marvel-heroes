import 'package:flutter/material.dart';
import 'package:marvel_heroes_app/src/models/character_model.dart';
import 'package:marvel_heroes_app/src/pages/character_detail/character_detail_page.dart';
import 'package:provider/src/provider.dart';
import 'package:marvel_heroes_app/src/pages/characters/widgets/character_appbar.dart';
import 'package:marvel_heroes_app/src/pages/characters/widgets/character_list_widget.dart';
import 'package:marvel_heroes_app/src/pages/characters/widgets/filter_widget.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';
import 'package:marvel_heroes_app/src/states/character_state.dart';
import 'package:marvel_heroes_app/src/stores/character_store.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      context.read<CharacterStore>().getAllCharacters();
    });
  }

  @override
  Widget build(BuildContext context) {
    CharacterStore controller = context.read<CharacterStore>();

    return Scaffold(
      backgroundColor: MarvelColors.white,
      appBar: const CharacterAppBar(),
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
              ValueListenableBuilder(
                  valueListenable: controller,
                  builder: (context, value, _) {
                    if (value is LoadingCharacterState) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  MarvelColors.red),
                            ),
                          ],
                        ),
                      );
                    }

                    if (value is ErrorCharacterState) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Erro ao carregar heróis",
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 18,
                                color: MarvelColors.red,
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    if (value is SuccessCharacterState) {
                      return Column(
                          children: value.characters!.entries.map((entry) {
                        return CharacterList(
                          titleList: controller.buildTitleList(entry.key),
                          characters: entry.value,
                          onTapSeeMore: () => print("Ver mais"),
                          onTap: (index) {
                            var character = entry.value[index] as Character;
                            print(entry.value[index].name);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CharacterDetail(
                                  character: character,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList());
                    }

                    return Container();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
