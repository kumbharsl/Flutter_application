import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});
  @override
  State createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Image.asset("assets/images/plant2.png"),
            Text(
              "Enjoy your \nlife with plant",
              style: GoogleFonts.poppins(
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              child: Container(
                width: 320,
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromRGBO(62, 102, 24, 1),
                      Color.fromRGBO(124, 180, 70, 1),
                    ],
                  ),
                ),
                // color: Colors.blue,
                child: Center(
                  child: Text(
                    "Get Started >",
                    style: GoogleFonts.rubik(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
