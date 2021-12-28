class Weight {
  int? value;
  String? unity;

  Weight({value, unity});

  Weight.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    unity = json['unity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['unity'] = unity;
    return data;
  }
}
