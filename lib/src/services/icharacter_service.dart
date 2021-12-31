import 'package:marvel_heroes_app/src/models/character_model.dart';

abstract class ICharacterService {
  Future<Map<String, dynamic>> getAllCharacters();
}
