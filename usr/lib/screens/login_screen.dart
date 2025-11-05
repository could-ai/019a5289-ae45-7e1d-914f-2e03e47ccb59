import 'package:flutter/material.dart';
import 'package:couldai_user_app/constants/app_roles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _role = '';

  @override
  Widget build(BuildContext context) {
    final portalType = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('$portalType Login'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Login to $portalType Portal',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 48),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                const SizedBox(height: 24),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // TODO: Implement actual login logic
                      print('Email: $_email, Password: $_password');

                      // For Staff, determine role from email (mock authentication)
                      if (portalType == 'Staff') {
                        _role = AppRoles.getRoleFromEmail(_email);
                        if (_role.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Invalid credentials for Staff role')),
                          );
                          return;
                        }
                      } else if (portalType == 'Parent') {
                        _role = AppRoles.parent;
                      } else if (portalType == 'Student') {
                        _role = 'Student'; // Simple for now, can expand later
                      }

                      // Navigate to the correct portal after login, passing role
                      switch (portalType) {
                        case 'Student':
                          Navigator.pushReplacementNamed(context, '/student_portal');
                          break;
                        case 'Parent':
                          Navigator.pushReplacementNamed(context, '/parent_portal', arguments: _role);
                          break;
                        case 'Staff':
                          Navigator.pushReplacementNamed(context, '/staff_portal', arguments: _role);
                          break;
                      }
                    }
                  },
                  child: const Text('Login', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}