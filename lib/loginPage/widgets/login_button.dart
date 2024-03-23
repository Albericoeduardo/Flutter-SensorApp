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
      child: const Text(
        'Login',
      ),
    );
  }
}