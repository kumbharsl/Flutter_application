import 'package:flutter/material.dart';

class OrderModel extends StatefulWidget {
  String name, email, phone, address;

  OrderModel(
      {required this.name,
      required this.email,
      required this.phone,
      required this.address});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text('Name : ${name}'),
            Text('Email :  ${email}'),
            Text('Phone : ${phone}'),
            Text('Address : ${address}'),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
