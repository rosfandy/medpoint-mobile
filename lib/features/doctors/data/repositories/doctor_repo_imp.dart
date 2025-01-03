import 'package:new_mobile/features/doctors/data/data_source/doctor_remote_source.dart';
import 'package:new_mobile/features/doctors/data/models/doctor.dart';
import 'package:new_mobile/features/doctors/domain/repositories/doctor_repository.dart';

class DoctorRepositoryImpl implements DoctorRepository {
  final DoctorRemoteSource remoteSource;

  DoctorRepositoryImpl(this.remoteSource);

  @override
  Future<List<DoctorModel>> getDoctors() async {
    return await remoteSource.fetchDoctors();
  }
}
