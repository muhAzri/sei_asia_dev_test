import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/app_colors.dart';
import 'package:sei_asia_dev_test/constants/app_text_styles.dart';

class SectionDivider extends StatelessWidget {
  final String label;

  const SectionDivider({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 12),
            height: 1,
            color: AppColors.white,
          ),
        ),
        Text(
          label,
          style: AppTextStyles.sectionDivider,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 12),
            height: 1,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
