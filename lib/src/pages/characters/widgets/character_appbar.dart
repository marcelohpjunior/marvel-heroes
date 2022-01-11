import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_heroes_app/src/shared/colors.dart';

class CharacterAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CharacterAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: MarvelColors.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      elevation: 0,
      backgroundColor: MarvelColors.white,
      centerTitle: true,
      title: SvgPicture.asset(
        'assets/icons/marvel.svg',
        color: MarvelColors.red,
      ),
      leading: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onTap: () {
          print("MENU");
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SvgPicture.asset(
            'assets/icons/menu.svg',
            color: MarvelColors.dark,
          ),
        ),
      ),
      actions: [
        InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          onTap: () {
            print("SEARCH");
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              color: MarvelColors.dark,
            ),
          ),
        ),
      ],
    );
  }
}
