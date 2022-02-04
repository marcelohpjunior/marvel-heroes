import './heigth_model.dart';
import './weight_model.dart';

class Caracteristic {
  String? birth;
  Weight? weight;
  Height? height;
  String? universe;

  get age => DateTime.now().year - int.parse(birth!);

  Caracteristic({birth, weight, height, universe});

  Caracteristic.fromJson(Map<String, dynamic> json) {
    birth = json['birth'];
    weight = json['weight'] != null ? Weight.fromJson(json['weight']) : null;
    height = json['height'] != null ? Height.fromJson(json['height']) : null;
    universe = json['universe'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['birth'] = birth;
    if (weight != null) {
      data['weight'] = weight!.toJson();
    }
    if (height != null) {
      data['height'] = height!.toJson();
    }
    data['universe'] = universe;
    return data;
  }
}
