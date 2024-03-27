import 'package:flutter/material.dart';
import 'package:flutter_farmapp/homePage/home_page.dart';

class LoginButton extends StatelessWidget {
  final String text;
  const LoginButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage())
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(153, 230, 186, 149),
        elevation: 10.0,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black
        ),
      ),
    );
  }
}