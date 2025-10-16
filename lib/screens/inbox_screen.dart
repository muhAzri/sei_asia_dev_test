import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/app_text_styles.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inbox')),
      body: const Center(
        child: Text('Inbox Screen', style: AppTextStyles.h1),
      ),
    );
  }
}
