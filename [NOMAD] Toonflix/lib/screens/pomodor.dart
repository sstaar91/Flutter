import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFFE7626C),
          centerTitle: true,
          title: const Text(
            "Pomodoro",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
