import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/screens/student_portal_screen.dart';
import 'package:couldai_user_app/screens/parent_portal_screen.dart';
import 'package:couldai_user_app/screens/staff_portal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AMSARD INTERNATIONAL ACADEMY',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/student_portal': (context) => const StudentPortalScreen(),
        '/parent_portal': (context) => const ParentPortalScreen(),
        '/staff_portal': (context) => const StaffPortalScreen(),
      },
    );
  }
}
