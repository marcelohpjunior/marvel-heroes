import 'package:flutter/cupertino.dart';
import 'package:marvel_heroes_app/src/services/icharacter_service.dart';
import 'package:marvel_heroes_app/src/states/character_state.dart';

class CharacterStore extends ValueNotifier<CharacterState> {
  ICharacterService service;

  CharacterStore(this.service) : super(InitialCharacterState());

  getAllCharacters() async {
    value = LoadingCharacterState();
    await Future.delayed(const Duration(seconds: 2));
    try {
      value = SuccessCharacterState(await service.getAllCharacters());
    } catch (e) {
      value = ErrorCharacterState();
    }
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
