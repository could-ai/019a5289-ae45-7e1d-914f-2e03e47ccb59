import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/student_dashboard_screen.dart';

class StudentPortalScreen extends StatelessWidget {
  const StudentPortalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // For now, directly navigate to the dashboard.
    // Later, this screen can be used for displaying student-specific information
    // or as a landing page after login.
    return const StudentDashboardScreen();
  }
}
