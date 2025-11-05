import 'package:flutter/material.dart';

class StaffPortalScreen extends StatelessWidget {
  const StaffPortalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff Portal'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: const Center(
        child: Text(
          'Welcome to the Staff Portal!',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
