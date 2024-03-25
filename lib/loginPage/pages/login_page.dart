import 'package:flutter/material.dart';
import 'package:flutter_farmapp/loginPage/widgets/grey_text.dart';
import 'package:flutter_farmapp/loginPage/widgets/input_field.dart';
import 'package:flutter_farmapp/loginPage/widgets/login_button.dart';
import 'package:flutter_farmapp/loginPage/widgets/other_login.dart';
import 'package:flutter_farmapp/loginPage/widgets/remeber_forgot.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 163, 179, 139),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Image.asset(
                    'assets/images/Lupulo_icon.png',
                    height: 150,
                    ),
                ),
                //padding here
                const SizedBox(height: 20,),
                const GreyText(text: "E-mail"),
                InputField(controller: emailController, isPassword: false),
                const SizedBox(height: 20,),
                const GreyText(text: "Senha"),
                InputField(controller: senhaController, isPassword: true),
                const RememberForgot(),
                const SizedBox(height: 20,),
                const LoginButton(),
                const SizedBox(height: 20,),
                const GreyText(text: "Ou"),
                const SizedBox(height: 20,),
                const OtherLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }
}