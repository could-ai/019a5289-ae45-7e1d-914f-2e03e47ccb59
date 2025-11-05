// Constants for user roles in the academy app
class AppRoles {
  static const String principal = 'Principal';
  static const String bursar = 'Bursar';
  static const String cashier = 'Cashier';
  static const String checker = 'Checker';
  static const String teacher = 'Teacher';
  static const String securityGuard = 'Security Guard';
  static const String parent = 'Parent';

  // List of all staff roles for validation
  static const List<String> staffRoles = [
    principal,
    bursar,
    cashier,
    checker,
    teacher,
    securityGuard,
  ];

  // Mock email-to-role mapping for staff (for demo purposes)
  static String getRoleFromEmail(String email) {
    switch (email.toLowerCase()) {
      case 'principal@academy.com':
        return principal;
      case 'bursar@academy.com':
        return bursar;
      case 'cashier@academy.com':
        return cashier;
      case 'checker@academy.com':
        return checker;
      case 'teacher@academy.com':
        return teacher;
      case 'security@academy.com':
        return securityGuard;
      default:
        return '';
    }
  }
}