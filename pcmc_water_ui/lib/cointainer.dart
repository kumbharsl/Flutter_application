import 'package:flutter/material.dart';

class NewDemo extends StatefulWidget {
  const NewDemo({
    super.key,
  });
  @override
  State<NewDemo> createState() => _NewDemo();
}

class _NewDemo extends State<NewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo')),
    );
  }
}
