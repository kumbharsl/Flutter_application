import 'package:e_commerace/components/my_timeline.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderTrack extends StatefulWidget {
  const OrderTrack({super.key});

  @override
  State<OrderTrack> createState() => _OrderTrackState();
}

class _OrderTrackState extends State<OrderTrack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: const Text(
          "Track Your Order",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: const [
            MyTimeLineTile(
              isFirst: true,
              isLast: false,
              isPast: true,
              eventCard: Text("YOUR ORDER PLACED"),
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventCard: Text("ORDER SHIPPED"),
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
              eventCard: Text("ORDER DELIVERED"),
            ),
          ],
        ),
      ),
    );
  }
}
