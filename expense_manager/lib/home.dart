import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State createState() => _HomeScreen();
}

class _HomeScreen extends State {
  List transactionList = [
    {
      "category": "Medicine",
      "description": "Lorem Ipsum is simply dummy text of the",
      "date": "3 June | 11:50 AM",
      "amount": "900",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: transactionList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 174, 91, 0.7),
                            shape: BoxShape.circle,
                          ),
                          child:
                              SvgPicture.asset('./assets/images/medicine.svg'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transactionList[index]["category"],
                              style: GoogleFonts.poppins(fontSize: 15),
                            ),
                            Text(
                              transactionList[index]["description"],
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.remove_circle_rounded,
                          color: Color.fromRGBO(246, 113, 49, 1),
                        ),
                        Text(
                          transactionList[index]['amount'],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Text(
                          transactionList[index]["date"],
                          style: GoogleFonts.poppins(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add Taransaction'),
        icon: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(14, 161, 125, 1),
          ),
          child: const Icon(
            Icons.add_rounded,
            size: 35,
            weight: 100,
            color: Colors.white,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(70),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
