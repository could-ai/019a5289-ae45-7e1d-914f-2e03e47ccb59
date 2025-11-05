import 'package:flutter/material.dart';

class ParentPortalScreen extends StatelessWidget {
  const ParentPortalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final role = ModalRoute.of(context)!.settings.arguments as String? ?? 'Parent';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Portal'),
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
            title: 'Student Information',
            icon: Icons.school,
            onTap: () => _showPlaceholder(context, 'View Student Info'),
          ),
          _buildDashboardItem(
            context,
            title: 'Online Payments',
            icon: Icons.payment,
            onTap: () => _showPlaceholder(context, 'Make Payments'),
          ),
          _buildDashboardItem(
            context,
            title: 'Installment Tracking',
            icon: Icons.schedule,
            onTap: () => _showPlaceholder(context, 'Track Installments'),
          ),
          _buildDashboardItem(
            context,
            title: 'Attendance',
            icon: Icons.event_available,
            onTap: () => _showPlaceholder(context, 'Check Attendance'),
          ),
          _buildDashboardItem(
            context,
            title: 'Results Check',
            icon: Icons.assessment,
            onTap: () => _showPlaceholder(context, 'View Results'),
          ),
          _buildDashboardItem(
            context,
            title: 'Printable Forms',
            icon: Icons.print,
            onTap: () => _showPlaceholder(context, 'Download Forms'),
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

  void _showPlaceholder(BuildContext context, String feature) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$feature - Feature coming soon!')),
    );
  }
}