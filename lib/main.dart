import 'package:flutter/material.dart';
import 'package:marvel_heroes_app/src/app/home/home_page.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

void main() {
  runApp(const MarvelHeroesApp());
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
      home: const Home(title: 'Marvel Heroes'),
    );
  }
}
