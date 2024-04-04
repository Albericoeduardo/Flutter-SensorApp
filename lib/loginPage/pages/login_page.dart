import 'package:flutter/material.dart';
import 'package:flutter_farmapp/widgets/grey_text.dart';
import 'package:flutter_farmapp/widgets/input_field.dart';
import 'package:flutter_farmapp/widgets/button.dart';
import 'package:flutter_farmapp/loginPage/widgets/other_login.dart';
import 'package:flutter_farmapp/loginPage/widgets/remeber_forgot.dart';
import 'package:flutter_farmapp/widgets/other_login.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 163, 179, 139),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Lupulo_icon.png',
                        height: 150,
                      ),
                      const SizedBox(height: 20.0,),
                      const GreyText(text: "E-mail"),
                      InputField(controller: emailController, isPassword: false),
                      const SizedBox(height: 20.0,),
                      const GreyText(text: "Senha"),
                      InputField(controller: senhaController, isPassword: true),
                      const RememberForgot(),
                      const SizedBox(height: 20.0,),
                      const LoginButton(text: "Login",),
                      const SizedBox(height: 20.0,),
                      const GreyText(text: "Ou"),
                      const SizedBox(height: 20,),
                      const OtherLogin()
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}