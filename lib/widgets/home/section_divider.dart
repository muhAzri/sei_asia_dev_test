import 'package:flutter/material.dart';

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
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 8,
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 12),
            height: 1,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
