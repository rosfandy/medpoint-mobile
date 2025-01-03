import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const DoctorCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
