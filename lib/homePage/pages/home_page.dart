import 'package:flutter/material.dart';
import 'package:flutter_farmapp/loginPage/pages/login_page.dart';
import 'package:flutter_farmapp/widgets/pic_button.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 253, 214),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PicButton(
                    icon: "assets/images/Lupulo_icon.png", 
                    route: HomePage()
                  ),
                  PicButton(
                    icon: "assets/images/menu.png", 
                    route: LoginPage()
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32,),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          const Text(
                            "Umidade do solo",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              color: Colors.black54,
                              fontSize: 24,
                              letterSpacing: 2
                            ),  
                         ),
                         GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.keyboard_arrow_down, 
                            size: 36,
                            color: Colors.black54,
                          ),
                        )
                      ]
                    ),
                    const SizedBox(height: 32,),
                    CircularPercentIndicator(
                      radius: 180,
                      lineWidth: 14,
                      percent: 0.75,
                      progressColor: Colors.indigo,
                      center: const Text(
                        "82%",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 32,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Média da umidade do solo:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black54
                          ),
                        ),
                        SizedBox(width: 6,),
                        Text(
                          "76%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black54
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Média ideal:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black54
                          ),
                        ),
                        SizedBox(width: 6,),
                        Text(
                          "40%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black54
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Último pico de umidade:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black54
                          ),
                        ),
                        SizedBox(width: 6,),
                        Text(
                          "82%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black54
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}