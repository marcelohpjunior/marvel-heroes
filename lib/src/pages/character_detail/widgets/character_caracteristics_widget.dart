import 'package:flutter/material.dart';
import 'package:marvel_heroes_app/src/models/caracteristic_model.dart';
import 'package:marvel_heroes_app/src/pages/character_detail/widgets/character_caracteristic_item_widget.dart';

class CharacterCaracteristics extends StatelessWidget {
  final Caracteristic caracteristics;
  const CharacterCaracteristics({Key? key, required this.caracteristics})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CharacterCaracteristicItem(
            assetIcon: 'assets/icons/age.svg',
            text: '${caracteristics.age} anos',
          ),
          CharacterCaracteristicItem(
            assetIcon: 'assets/icons/weight.svg',
            text: '${caracteristics.weight!.weightWithUnity}',
          ),
          CharacterCaracteristicItem(
            assetIcon: 'assets/icons/height.svg',
            text: '${caracteristics.height!.heightWithUnity}',
          ),
          CharacterCaracteristicItem(
            assetIcon: 'assets/icons/universe.svg',
            text: '${caracteristics.universe}',
          ),
        ],
      ),
    );
  }
}
