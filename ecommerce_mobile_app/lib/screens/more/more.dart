import 'package:ecommerce_mobile_app/Provider/favorite_provider.dart';
import 'package:ecommerce_mobile_app/screens/more/order_page.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class MoreInfo extends StatefulWidget {
  const MoreInfo({super.key});

  @override
  State<MoreInfo> createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider.favorites;
    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: const Text(
          "Info",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderPage(),
                  ),
                );
              },
              child: Container(
                child: Text("My Order"),
              ),
            ),
            Divider(
              color: Colors.teal.shade100,
              thickness: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}
