import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';
// import 'package:toonflix/widgets/button.dart';
// import 'package:toonflix/widgets/card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
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
        home: const HomeScreen());
  }
}

// My Wallet
// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFF181818),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 20,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 60,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         const Text(
//                           "Hey, Kim",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                         Text(
//                           "welcome",
//                           style: TextStyle(
//                             color: Colors.white.withOpacity(0.7),
//                             fontSize: 18,
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 60,
//                 ),
//                 Text(
//                   "Total balance",
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.white.withOpacity(0.8),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Text(
//                   "\$5 194 423",
//                   style: TextStyle(
//                     fontSize: 48,
//                     fontWeight: FontWeight.w900,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Button(
//                       text: 'Transfer',
//                       bgColor: Color(0xFFF1B33B),
//                       textColor: Colors.black,
//                     ),
//                     Button(
//                       text: 'Request',
//                       bgColor: Color(0xFF1F2123),
//                       textColor: Colors.white,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 100,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     const Text(
//                       "Wallets",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 48,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       "View All",
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.8),
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const CurrencyCard(
//                   name: "Euro",
//                   code: "EUR",
//                   amount: "6 428",
//                   icon: Icons.euro_rounded,
//                   isInverted: false,
//                   offset: 0,
//                 ),
//                 const CurrencyCard(
//                   name: "Bitcoin",
//                   code: "BTC",
//                   amount: "9 785",
//                   icon: Icons.currency_bitcoin_rounded,
//                   isInverted: true,
//                   offset: -25,
//                 ),
//                 const CurrencyCard(
//                   name: "Dollar",
//                   code: "USD",
//                   amount: "10 785",
//                   icon: Icons.attach_money_rounded,
//                   isInverted: false,
//                   offset: -50,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
