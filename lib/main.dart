import 'package:flutter/material.dart';
import 'package:marvel_heroes_app/src/stores/character_store.dart';
import 'package:marvel_heroes_app/src/pages/characters/characters_page.dart';
import 'package:marvel_heroes_app/src/services/character_service.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => CharacterService()),
        ChangeNotifierProvider(
            create: (context) => CharacterStore(
                Provider.of<CharacterService>(context, listen: false))),
      ],
      child: const MarvelHeroesApp(),
    ),
  );
}

class MarvelHeroesApp extends StatelessWidget {
  const MarvelHeroesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: MarvelColors.red,
        colorScheme: ColorScheme.fromSwatch(
          accentColor: MarvelColors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const CharactersPage(title: 'Marvel Heroes'),
    );
  }
}
