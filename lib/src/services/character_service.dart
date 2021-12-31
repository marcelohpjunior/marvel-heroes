import 'dart:convert';

import 'package:marvel_heroes_app/src/models/character_model.dart';
import 'package:marvel_heroes_app/src/services/icharacter_service.dart';

import 'package:flutter/services.dart' show rootBundle;

class CharacterService implements ICharacterService {
  final String _pathJson = 'assets/application.json';

  Future<Map<String, dynamic>> getAllCharacters() async {
    List characters = [];
    Map<String, dynamic> result = <String, dynamic>{};

    var characterJson = await getJsonAssets(_pathJson) as Map<String, dynamic>;

    characterJson.forEach((key, values) {
      for (var character in values) {
        characters.add(Character.fromJson(character));
      }
      result.addAll({key: characters});
      characters = [];
    });

    return result;
  }

  getJsonAssets(String path) async {
    var result = await rootBundle.loadString(path);
    return jsonDecode(result);
  }
}
