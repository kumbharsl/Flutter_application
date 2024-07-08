import 'package:flutter/material.dart';

import '../Home/Widget/search_bar.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: const Text(
          "Your Order Details",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            MySearchBAR(),
            SizedBox(height: 5),
            Divider(),
            SizedBox(height: 5),
            Divider(),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
