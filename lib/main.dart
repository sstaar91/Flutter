import 'package:flutter/material.dart';
import 'package:toonflix/screens/main_screen.dart';
import 'package:toonflix/widgets/menuCard_widget.dart';
// import 'package:toonflix/screens/home_screen.dart';
// import 'package:toonflix/widgets/button.dart';
// import 'package:toonflix/widgets/card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              MenuCard(
                text: "My wallet",
              )
            ],
          ),
        ),
      ),
    );
  }
}


// Pomodors

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSwatch(
//             backgroundColor: const Color(0xFFE7626C),
//           ),
//           textTheme: const TextTheme(
//             displayLarge: TextStyle(
//               color: Color(0xFF232B55),
//             ),
//           ),
//           cardColor: const Color(0xFFF4EDDB),
//         ),
//         home: const HomeScreen());
//   }
// }

