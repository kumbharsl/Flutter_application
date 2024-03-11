import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Image.asset(
            //'assets/images/quize-logo.png',
           // width: 300,
            //color: const Color.fromARGB(255, 255, 255, 255),
            //),
          Opacity(
             opacity: 0.9,
             child: Image.asset(
               'assets/images/quize-logo.png',
               width: 300,
             ),
           ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color:const Color.fromARGB(255, 241, 240, 241),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor:const Color.fromARGB(255, 255, 255, 255),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
