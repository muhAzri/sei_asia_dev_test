import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/app_colors.dart';
import 'package:sei_asia_dev_test/constants/app_text_styles.dart';

class CreditInfoWidget extends StatelessWidget {
  final double credit;
  final int points;
  final int package;

  const CreditInfoWidget({
    super.key,
    required this.credit,
    required this.points,
    required this.package,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 21),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: _buildSection('CREDIT', 'RM${credit.toStringAsFixed(2)}'),
            ),
            _buildDivider(),
            Expanded(child: _buildSection('POINTS', points.toString())),
            _buildDivider(),
            Expanded(child: _buildSection('PACKAGE', package.toString())),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: AppTextStyles.labelSmall,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppTextStyles.creditValue.copyWith(
              color: AppColors.primaryVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(width: 1, color: AppColors.grey300);
  }
}
