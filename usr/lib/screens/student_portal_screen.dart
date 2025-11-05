import 'package:flutter/material.dart';

class StudentPortalScreen extends StatelessWidget {
  const StudentPortalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Portal'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: const Center(
        child: Text(
          'Welcome to the Student Portal!',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
