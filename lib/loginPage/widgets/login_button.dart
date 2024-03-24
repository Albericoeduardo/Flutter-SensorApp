import 'package:flutter/material.dart';
import 'package:flutter_farmapp/homePage/home_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

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
      child: const Text(
        'Login',
        style: TextStyle(
          color: Colors.black
        ),
      ),
    );
  }
}