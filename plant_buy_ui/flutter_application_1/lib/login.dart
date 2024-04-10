import 'package:flutter/material.dart';
import 'validation.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _LoginState();
}

class _LoginState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Image.asset('./assets/images/cornerdesign.png'),
            ],
          ),
          const SizedBox(height: 30),
          Text(
            "Log in",
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 340,
            child: TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.call_rounded,
                    color: Color.fromRGBO(164, 164, 164, 1)),
                label: Text(
                  "Mobile number",
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: const Color.fromRGBO(164, 164, 164, 1),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Validation(),
                ),
              );
            },
            child: Container(
              height: 50,
              width: 340,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
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
              child: Center(
                child: Text(
                  "Log in",
                  style: GoogleFonts.rubik(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Image.asset('./assets/images/login.png')
        ],
      ),
    );
  }
}
