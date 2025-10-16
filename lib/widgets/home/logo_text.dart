import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/app_text_styles.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "LOGO",
      style: AppTextStyles.logo,
    );
  }
}
