import 'package:flutter/material.dart';
import 'package:couldai_user_app/constants/app_roles.dart';

class StaffDashboardScreen extends StatelessWidget {
  final String role;

  const StaffDashboardScreen({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$role Dashboard'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        children: _getDashboardItems(context, role),
      ),
    );
  }

  List<Widget> _getDashboardItems(BuildContext context, String role) {
    switch (role) {
      case AppRoles.principal:
        return [
          _buildDashboardItem(context, title: 'Monitor Staff', icon: Icons.supervisor_account, onTap: () => _showPlaceholder(context, 'Monitor Staff Activities')),
          _buildDashboardItem(context, title: 'Monitor Students', icon: Icons.people, onTap: () => _showPlaceholder(context, 'Monitor Student Activities')),
          _buildDashboardItem(context, title: 'Payroll Management', icon: Icons.account_balance_wallet, onTap: () => _showPlaceholder(context, 'Manage Payroll')),
          _buildDashboardItem(context, title: 'Staff Information', icon: Icons.info, onTap: () => _showPlaceholder(context, 'View Staff Info')),
          _buildDashboardItem(context, title: 'Student Information', icon: Icons.school, onTap: () => _showPlaceholder(context, 'View Student Info')),
          _buildDashboardItem(context, title: 'Printable Reports', icon: Icons.print, onTap: () => _showPlaceholder(context, 'Generate Reports')),
        ];
      case AppRoles.bursar:
        return [
          _buildDashboardItem(context, title: 'Payroll Management', icon: Icons.account_balance_wallet, onTap: () => _showPlaceholder(context, 'Manage Payroll')),
          _buildDashboardItem(context, title: 'Online Payments', icon: Icons.payment, onTap: () => _showPlaceholder(context, 'Handle Payments')),
          _buildDashboardItem(context, title: 'Installment Tracking', icon: Icons.schedule, onTap: () => _showPlaceholder(context, 'Track Installments')),
          _buildDashboardItem(context, title: 'Financial Reports', icon: Icons.bar_chart, onTap: () => _showPlaceholder(context, 'View Financial Reports')),
        ];
      case AppRoles.cashier:
        return [
          _buildDashboardItem(context, title: 'Process Payments', icon: Icons.payment, onTap: () => _showPlaceholder(context, 'Process Student Payments')),
          _buildDashboardItem(context, title: 'Installment Management', icon: Icons.schedule, onTap: () => _showPlaceholder(context, 'Manage Installments')),
          _buildDashboardItem(context, title: 'Payment History', icon: Icons.history, onTap: () => _showPlaceholder(context, 'View Payment History')),
        ];
      case AppRoles.checker:
        return [
          _buildDashboardItem(context, title: 'Attendance Tracking', icon: Icons.event_available, onTap: () => _showPlaceholder(context, 'Track Attendance')),
          _buildDashboardItem(context, title: 'Verify Records', icon: Icons.verified, onTap: () => _showPlaceholder(context, 'Verify Attendance Records')),
        ];
      case AppRoles.teacher:
        return [
          _buildDashboardItem(context, title: 'Results Processing', icon: Icons.assessment, onTap: () => _showPlaceholder(context, 'Process Student Results')),
          _buildDashboardItem(context, title: 'Attendance Tracking', icon: Icons.event_available, onTap: () => _showPlaceholder(context, 'Track Student Attendance')),
          _buildDashboardItem(context, title: 'Student Information', icon: Icons.school, onTap: () => _showPlaceholder(context, 'View Student Info')),
          _buildDashboardItem(context, title: 'Printable Forms', icon: Icons.print, onTap: () => _showPlaceholder(context, 'Generate Printable Forms')),
        ];
      case AppRoles.securityGuard:
        return [
          _buildDashboardItem(context, title: 'Attendance Monitoring', icon: Icons.visibility, onTap: () => _showPlaceholder(context, 'Monitor Attendance')),
          _buildDashboardItem(context, title: 'Security Logs', icon: Icons.security, onTap: () => _showPlaceholder(context, 'View Security Logs')),
        ];
      default:
        return [
          _buildDashboardItem(context, title: 'Access Denied', icon: Icons.lock, onTap: () => {}),
        ];
    }
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