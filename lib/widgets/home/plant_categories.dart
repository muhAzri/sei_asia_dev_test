import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/assets.dart';

class PlantCategories extends StatelessWidget {
  const PlantCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _buildPlantCategory(Assets.shopPlants1),
          _buildPlantCategory(Assets.shopPlants2),
          _buildPlantCategory(Assets.shopPlants3),
          _buildPlantCategory(Assets.shopPlants4),
          _buildPlantCategory(Assets.shopPlants5),
        ],
      ),
    );
  }

  Widget _buildPlantCategory(String iconPath) {
    return Container(
      width: 78,
      margin: const EdgeInsets.only(right: 12),
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(
          Color(0xFFF4F4F4),
          BlendMode.modulate,
        ),
        child: Image.asset(iconPath, fit: BoxFit.contain),
      ),
    );
  }
}
