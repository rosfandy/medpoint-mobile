import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:new_mobile/constant/constant.dart';
import 'package:new_mobile/features/doctors/data/models/doctor.dart';

class DoctorRemoteSource {
  final String baseUrl = '$apiServiceUrl/doctors';

  Future<List<DoctorModel>> fetchDoctors() async {
    final response =
        await http.get(Uri.parse(baseUrl), headers: {'apikey': apiKey});

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);

      List<DoctorModel> doctors = jsonResponse
          .map((doctorJson) => DoctorModel.fromJson(doctorJson))
          .toList();
      return doctors;
    } else {
      throw Exception('Failed to load doctors: ${response.statusCode}');
    }
  }
}
