import 'package:flutter/material.dart';

class PicButton extends StatelessWidget{
  final String icon;
  final Widget route;
  const PicButton({super.key, required this.icon, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => route));
      },
      child: Image.asset(
        icon,
        height: 40,
        width: 40,
      ),
    );
  }
}