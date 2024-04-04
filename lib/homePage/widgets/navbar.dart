import 'package:flutter/material.dart';
import 'package:flutter_farmapp/homePage/pages/home_page.dart';
import 'package:flutter_farmapp/widgets/pic_button.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 162, 179, 139),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PicButton(icon: 'Lupulo_icon.png', route: HomePage())
        ],
      )       
    );
  }
}