import 'package:flutter/material.dart';
import 'package:marvel_heroes_app/src/models/ability_model.dart';
import 'package:marvel_heroes_app/src/pages/character_detail/widgets/character_ability_widget.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

class CharacterListAbility extends StatelessWidget {
  final Ability abilities;
  final EdgeInsetsGeometry? padding;

  const CharacterListAbility({Key? key, required this.abilities, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CharacterAbility(
            abilityTitle: 'Força',
            abilityValue: abilities.force!,
          ),
          CharacterAbility(
            abilityTitle: 'Inteligência',
            abilityValue: abilities.intelligence!,
          ),
          CharacterAbility(
            abilityTitle: 'Agilidade',
            abilityValue: abilities.agility!,
          ),
          CharacterAbility(
            abilityTitle: 'Resistência',
            abilityValue: abilities.endurance!,
          ),
          CharacterAbility(
            abilityTitle: 'Velocidade',
            abilityValue: abilities.velocity!,
          ),
        ],
      ),
    );
  }
}
