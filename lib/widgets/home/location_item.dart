import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/assets.dart';

class LocationItem extends StatelessWidget {
  final String title;
  final String address;
  final String operatingHours;

  const LocationItem({
    super.key,
    required this.title,
    required this.address,
    required this.operatingHours,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Assets.iconLocationAlt,
                width: 20,
                height: 20,
                color: const Color(0xFF2D5F4D),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  address,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue[700],
                    decoration: TextDecoration.underline,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Assets.iconClock, width: 20, height: 20),
              const SizedBox(width: 12),
              Text(
                operatingHours,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
