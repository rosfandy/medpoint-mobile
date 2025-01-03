class DoctorModel {
  final String id;
  final String profileId;
  final String name;
  final String specialization;
  final DateTime createdAt;
  final DateTime updatedAt;

  DoctorModel({
    required this.id,
    required this.profileId,
    required this.name,
    required this.specialization,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'],
      profileId: json['profile_id'],
      name: json['name'],
      specialization: json['specialization'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
