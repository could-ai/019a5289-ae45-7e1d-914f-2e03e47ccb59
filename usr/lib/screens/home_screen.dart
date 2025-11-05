import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AMSARD INTERNATIONAL ACADEMY"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'Welcome to',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              ),
              const Text(
                'AMSARD INTERNATIONAL ACADEMY',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 48),
              _buildPortalButton(
                context,
                title: 'Student Portal',
                icon: Icons.school,
                routeName: '/student_portal',
              ),
              const SizedBox(height: 24),
              _buildPortalButton(
                context,
                title: 'Parent Portal',
                icon: Icons.family_restroom,
                routeName: '/parent_portal',
              ),
              const SizedBox(height: 24),
              _buildPortalButton(
                context,
                title: 'Staff Portal',
                icon: Icons.work,
                routeName: '/staff_portal',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPortalButton(BuildContext context, {required String title, required IconData icon, required String routeName}) {
    return ElevatedButton.icon(
      icon: Icon(icon, size: 28),
      label: Text(title, style: const TextStyle(fontSize: 18)),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
