import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _login() async {
    // API endpoint
    final apiUrl = 'https://your-api-endpoint/login';

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: jsonEncode({
          'email': _emailController.text,
          'password': _passwordController.text,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        // Successful login
        // Handle token, navigation, etc.
      } else {
        // Handle error
        print('Login failed: ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ... login form UI
        );
  }
}
