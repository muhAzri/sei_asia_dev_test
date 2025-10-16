import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/app_text_styles.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discover')),
      body: const Center(
        child: Text('Discover Screen', style: AppTextStyles.h1),
      ),
    );
  }
}
