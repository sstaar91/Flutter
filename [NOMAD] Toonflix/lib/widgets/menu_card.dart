import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String text;
  final Widget page;

  const MenuCard({
    super.key,
    required this.text,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        width: 100,
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.amberAccent.shade200,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
