import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/staff_dashboard_screen.dart';

class StaffPortalScreen extends StatelessWidget {
  const StaffPortalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final role = ModalRoute.of(context)!.settings.arguments as String;

    // Navigate directly to the role-based dashboard
    return StaffDashboardScreen(role: role);
  }
}