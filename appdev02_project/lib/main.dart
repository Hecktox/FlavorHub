import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // Load the LoginPage widget from login.dart
    );
  }
}
