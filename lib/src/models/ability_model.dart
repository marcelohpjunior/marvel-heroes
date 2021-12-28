class Ability {
  int? force;
  int? intelligence;
  int? agility;
  int? endurance;
  int? velocity;

  Ability({force, intelligence, agility, endurance, velocity});

  Ability.fromJson(Map<String, dynamic> json) {
    force = json['force'];
    intelligence = json['intelligence'];
    agility = json['agility'];
    endurance = json['endurance'];
    velocity = json['velocity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['force'] = force;
    data['intelligence'] = intelligence;
    data['agility'] = agility;
    data['endurance'] = endurance;
    data['velocity'] = velocity;
    return data;
  }
}
