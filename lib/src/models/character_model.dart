import 'ability_model.dart';
import 'caracteristic_model.dart';

class Character {
  String? name;
  String? alterEgo;
  String? imagePath;
  String? biography;
  Caracteristic? caracteristics;
  Ability? abilities;
  List<String>? movies;

  Character(
      {this.name,
      this.alterEgo,
      this.imagePath,
      this.biography,
      this.caracteristics,
      this.abilities,
      this.movies});

  Character.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    alterEgo = json['alterEgo'];
    imagePath = json['imagePath'];
    biography = json['biography'];
    caracteristics = json['caracteristics'] != null
        ? Caracteristic.fromJson(json['caracteristics'])
        : null;
    abilities =
        json['abilities'] != null ? Ability.fromJson(json['abilities']) : null;
    movies = json['movies'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['alterEgo'] = alterEgo;
    data['imagePath'] = imagePath;
    data['biography'] = biography;
    if (caracteristics != null) {
      data['caracteristics'] = caracteristics!.toJson();
    }
    if (abilities != null) {
      data['abilities'] = abilities!.toJson();
    }
    data['movies'] = movies;
    return data;
  }
}
