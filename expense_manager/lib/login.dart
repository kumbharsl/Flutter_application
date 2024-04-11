import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset('assets/images/Group 77.png'),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Login to your Account",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(),
              autofillHints: Characters("Username"),
            )
          ],
        ),
      ),
    );
  }
}
