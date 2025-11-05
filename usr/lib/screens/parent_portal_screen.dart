import 'package:flutter/material.dart';

class ParentPortalScreen extends StatelessWidget {
  const ParentPortalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Portal'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: const Center(
        child: Text(
          'Welcome to the Parent Portal!',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
