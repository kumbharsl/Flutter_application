import 'package:flutter/material.dart';
import 'package:instagram/login.dart';
import 'package:instagram/resistration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page Example',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: RegistrationPage(),
    );
  }
}
