abstract class CharacterState {}

class InitialCharacterState extends CharacterState {}

class SuccessCharacterState extends CharacterState {
  final Map<String, dynamic>? characters;

  SuccessCharacterState(this.characters);
}

class ErrorCharacterState extends CharacterState {}

class LoadingCharacterState extends CharacterState {}
