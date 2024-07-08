import 'package:flutter/material.dart';

class BuyDetails extends StatefulWidget {
  const BuyDetails({super.key});

  @override
  State<BuyDetails> createState() => _BuyDetailsState();
}

class _BuyDetailsState extends State<BuyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: const Text(
          "Add Details",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
