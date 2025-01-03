import 'package:new_mobile/features/doctors/data/models/doctor.dart';

abstract class DoctorState {}

class DoctorInitial extends DoctorState {}

class DoctorLoading extends DoctorState {}

class DoctorLoaded extends DoctorState {
  final List<DoctorModel> doctors;
  DoctorLoaded({required this.doctors});
}

class DoctorError extends DoctorState {
  final String message;
  DoctorError({required this.message});
}
