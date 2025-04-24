import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Hand? myHand;
  Hand? randomHand;
  Result? result;

  void ramdomHandText() {
    final random = Random();
    final randomNumber = random.nextInt(3);
    final hand = Hand.values[randomNumber];

    setState(() {
      randomHand = hand;
    });
    decideResult();
  }

  void decideResult() {
    if (myHand == null || randomHand == null) {
      return;
    }
    final Result result;

    if (myHand == randomHand) {
      result = Result.draw;
    } else if (myHand == Hand.rock) {
      if (randomHand == Hand.scissors) {
        result = Result.win;
      } else {
        result = Result.lose;
      }
    } else if (myHand == Hand.scissors) {
      if (randomHand == Hand.paper) {
        result = Result.win;
      } else {
        result = Result.lose;
      }
    } else {
      if (randomHand == Hand.rock) {
        result = Result.win;
      } else {
        result = Result.lose;
      }
    }
    setState(() {
      this.result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "상대",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              randomHand?.text ?? "?",
              style: const TextStyle(fontSize: 100),
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              result?.text ?? "?",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              myHand?.text ?? "?",
              style: const TextStyle(fontSize: 200),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                myHand = Hand.rock;
              });
              ramdomHandText();
            },
            child: const Text(
              "👊",
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                myHand = Hand.scissors;
              });
              ramdomHandText();
            },
            child: const Text(
              "✌️",
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                myHand = Hand.paper;
              });
              ramdomHandText();
            },
            child: const Text(
              "🖐️",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}

enum Hand {
  rock,
  scissors,
  paper;

  String get text {
    switch (this) {
      case Hand.rock:
        return "👊";
      case Hand.scissors:
        return "✌️";
      case Hand.paper:
        return "🖐️";
    }
  }
}

enum Result {
  win,
  lose,
  draw;

  String get text {
    switch (this) {
      case Result.win:
        return "승리";
      case Result.lose:
        return "패배";
      case Result.draw:
        return "무승부";
    }
  }
}
