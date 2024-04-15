import 'package:flutter/material.dart';
import 'package:toonflix/models/menu_list.dart';
import 'package:toonflix/widgets/menu_card.dart';
import 'package:toonflix/screens/main_screen.dart';
import 'package:toonflix/screens/my_wallet.dart';
import 'package:toonflix/screens/pomodor.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  static List<MenuList> cardList = [
    MenuList(title: "My wallet", page: const MyWallet()),
    MenuList(title: "pomodoro", page: const Pomodoro()),
    MenuList(title: "toonflix", page: ToonflixMain()),
  ];

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: cardList.length,
            itemBuilder: (context, index) {
              return Center(
                child: MenuCard(
                  text: cardList[index].title,
                  page: cardList[index].page,
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
          ),
        ),
      ),
    );
  }
}
