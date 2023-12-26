class PrivacyPolicyModel {
  final int id;
  final String title;
  final String description;
  final int type;

  PrivacyPolicyModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.type});

  factory PrivacyPolicyModel.fromJson(Map<String, dynamic> json) {
    return PrivacyPolicyModel(
      id: int.parse(json['id'].toString()),
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      type: int.parse(json['type'].toString()),
    );
  }
}
