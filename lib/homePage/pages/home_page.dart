import 'package:flutter/material.dart';
import 'package:flutter_farmapp/homePage/widgets/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color.fromARGB(255, 250, 253, 214),
      body: Center(
        child: NavBar(),
      ),
    );
  }
}