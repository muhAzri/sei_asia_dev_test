import 'package:flutter/material.dart';

class ShopNavIcon extends StatelessWidget {
  final String iconPath;

  const ShopNavIcon({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        child: Image.asset(iconPath, width: 60, height: 60, fit: BoxFit.contain),
      ),
    );
  }
}
