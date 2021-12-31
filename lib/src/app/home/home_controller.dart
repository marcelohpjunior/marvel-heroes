import 'package:flutter/cupertino.dart';
import 'package:marvel_heroes_app/src/services/icharacter_service.dart';

class HomeController extends ChangeNotifier {
  ICharacterService service;
  Map<String, dynamic>? characters;

  HomeController(this.service);

  getAllCharacters() async {
    characters = await service.getAllCharacters();
    notifyListeners();
  }

  buildTitleList(String? title) {
    switch (title) {
      case 'heroes':
        return 'Heróis';
      case 'villains':
        return 'Vilões';
      case 'antiHeroes':
        return 'Anti-heróis';
      case 'aliens':
        return 'Alienígenas';
      case 'humans':
        return 'Humanos';
      default:
        return '';
    }
  }
}
