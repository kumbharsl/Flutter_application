import 'package:flutter/material.dart';

// Model class
class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }
}

// Main function
void main() {
  User user = User(id: 1, name: "Satyam", email: "satyam@example.com");

  runApp(MyApp(user: user));
}

// MyApp widget
class MyApp extends StatelessWidget {
  final User user;

  MyApp({required this.user});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Info'),
        ),
        body: Center(
          child: Text(
            'User Name: ${user.name}',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
