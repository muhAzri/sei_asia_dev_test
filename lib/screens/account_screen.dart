import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/app_text_styles.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account')),
      body: const Center(
        child: Text('Account Screen', style: AppTextStyles.h1),
      ),
    );
  }
}
