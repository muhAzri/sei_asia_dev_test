import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/app_text_styles.dart';

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
        Text(value, style: AppTextStyles.bodyWhite),
      ],
    );
  }
}
