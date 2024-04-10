import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/home.dart';

class Snake extends StatefulWidget {
  const Snake({super.key});
  @override
  State createState() => _SnakeState();
}

class _SnakeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Image.asset('./assets/images/snake2.png'),
          const Icon(Icons.more_horiz_outlined, size: 45),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, bottom: 10, top: 20),
                    child: Text(
                      "Snake Plants",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                        "Plansts make your life with minimal and \nhappy love the plants more and enjoy life.",
                        style: GoogleFonts.poppins()),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            height: 200,
            width: 320,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(118, 152, 75, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('./assets/images/height.png'),
                    Image.asset('./assets/images/temp.png'),
                    Image.asset('./assets/images/port.png'),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total price",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 0.8),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "₹350",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 34),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(103, 133, 74, 1),
                        ),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            "Add to cart",
                            style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
