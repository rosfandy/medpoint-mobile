import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_mobile/features/doctors/data/data_source/doctor_remote_source.dart';
import 'package:new_mobile/features/doctors/data/repositories/doctor_repo_imp.dart';
import 'package:new_mobile/features/doctors/presentation/bloc/doctor_bloc.dart';
import 'package:new_mobile/features/doctors/presentation/bloc/doctor_event.dart';
import 'package:new_mobile/features/doctors/presentation/bloc/doctor_state.dart';
import 'package:new_mobile/features/doctors/presentation/widgets/Card.dart';

class DoctorListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DoctorBloc(DoctorRepositoryImpl(DoctorRemoteSource()))
            ..add(FetchDoctors()),
      child: Scaffold(
        appBar: AppBar(title: Text('Doctors')),
        body: BlocBuilder<DoctorBloc, DoctorState>(
          builder: (context, state) {
            if (state is DoctorLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is DoctorLoaded) {
              return ListView.builder(
                itemCount: state.doctors.length,
                itemBuilder: (context, index) {
                  final doctor = state.doctors[index];
                  return DoctorCard(
                    title: doctor.name,
                    subtitle: 'Specialization: ${doctor.specialization}',
                  );
                },
              );
            } else if (state is DoctorError) {
              return Center(child: Text(state.message));
            }
            return Center(child: Text('No data available.'));
          },
        ),
      ),
    );
  }
}
