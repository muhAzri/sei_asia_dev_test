import 'package:flutter/material.dart';

class MallScreen extends StatelessWidget {
  const MallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mall')),
      body: const Center(
        child: Text('Mall Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
