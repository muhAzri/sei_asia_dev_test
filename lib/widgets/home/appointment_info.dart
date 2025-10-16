import 'package:flutter/material.dart';

class AppointmentInfo extends StatelessWidget {
  final String iconPath;
  final String value;

  const AppointmentInfo({
    super.key,
    required this.iconPath,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(iconPath, width: 12, height: 12),
        const SizedBox(width: 5),
        Text(value, style: const TextStyle(fontSize: 14, color: Colors.white)),
      ],
    );
  }
}
