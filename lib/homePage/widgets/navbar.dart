import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/images/Lupulo_icon.png",
            height: 32,
            width: 32,
          )
          ),
          const RotatedBox(
            quarterTurns: 135,
            child: Icon(
            Icons.bar_chart_rounded,
            color: Colors.indigo,
            size: 28,
          ),
        )
      ],
    );
  }
}