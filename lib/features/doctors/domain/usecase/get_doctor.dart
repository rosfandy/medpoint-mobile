import 'package:new_mobile/features/doctors/data/models/doctor.dart';
import 'package:new_mobile/features/doctors/domain/entities/doctor.dart';
import 'package:new_mobile/features/doctors/domain/repositories/doctor_repository.dart';

class GetDoctorsUseCase {
  final DoctorRepository repository;

  GetDoctorsUseCase(this.repository);

  Future<List<DoctorEntities>> call() async {
    List<DoctorModel> doctorModels = await repository.getDoctors();
    return doctorModels
        .map((model) => DoctorEntities(
              id: model.id,
              profileId: model.profileId,
              name: model.name,
              specialization: model.specialization,
            ))
        .toList();
  }
}
