import 'package:flutter/material.dart';

class StudentDashboardScreen extends StatelessWidget {
  const StudentDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        children: <Widget>[
          _buildDashboardItem(
            context,
            title: 'Online Registration',
            icon: Icons.app_registration,
            onTap: () {
              // TODO: Navigate to Online Registration screen
            },
          ),
          _buildDashboardItem(
            context,
            title: 'Check Results',
            icon: Icons.assessment,
            onTap: () {
              // TODO: Navigate to Check Results screen
            },
          ),
          _buildDashboardItem(
            context,
            title: 'Online Payment',
            icon: Icons.payment,
            onTap: () {
              // TODO: Navigate to Online Payment screen
            },
          ),
          _buildDashboardItem(
            context,
            title: 'Attendance',
            icon: Icons.event_available,
            onTap: () {
              // TODO: Navigate to Attendance screen
            },
          ),
           _buildDashboardItem(
            context,
            title: 'ID Card',
            icon: Icons.badge,
            onTap: () {
              // TODO: Navigate to ID Card screen
            },
          ),
           _buildDashboardItem(
            context,
            title: 'Printable Forms',
            icon: Icons.print,
            onTap: () {
              // TODO: Navigate to Printable Forms screen
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context, {required String title, required IconData icon, required VoidCallback onTap}) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 48, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
