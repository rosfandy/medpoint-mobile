import 'package:new_mobile/features/doctors/data/models/doctor.dart';

abstract class DoctorRepository {
  Future<List<DoctorModel>> getDoctors();
}
