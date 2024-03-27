import 'package:flutter/material.dart';
import 'package:flutter_farmapp/loginPage/pages/login_page.dart';
// import 'package:flutter_farmapp/registerPage/pages/register_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage()
    );
  }
}
