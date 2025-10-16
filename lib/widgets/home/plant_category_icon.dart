import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/app_colors.dart';

class PlantCategoryIcon extends StatelessWidget {
  final String iconPath;

  const PlantCategoryIcon({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78,
      margin: const EdgeInsets.only(right: 12),
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(
          AppColors.grey200,
          BlendMode.modulate,
        ),
        child: Image.asset(iconPath, fit: BoxFit.contain),
      ),
    );
  }
}
