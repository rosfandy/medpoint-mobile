import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_mobile/features/doctors/data/repositories/doctor_repo_imp.dart';
import 'package:new_mobile/features/doctors/presentation/bloc/doctor_event.dart';
import 'package:new_mobile/features/doctors/presentation/bloc/doctor_state.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final DoctorRepositoryImpl doctorRepository;

  DoctorBloc(this.doctorRepository) : super(DoctorInitial()) {
    on<FetchDoctors>((event, emit) async {
      emit(DoctorLoading());
      try {
        final doctors = await doctorRepository.getDoctors();
        emit(DoctorLoaded(doctors: doctors));
      } catch (e) {
        emit(DoctorError(message: e.toString()));
      }
    });
  }
}
