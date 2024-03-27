import 'package:flutter/material.dart';
import 'package:flutter_farmapp/widgets/button.dart';
import 'package:flutter_farmapp/widgets/grey_text.dart';
import 'package:flutter_farmapp/widgets/input_field.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController nomeFazendaController = TextEditingController();
  final TextEditingController cnpjController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmSenhaController = TextEditingController();
  RegisterPage({super.key});

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
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Image.asset(
                    'assets/images/Lupulo_icon.png',
                    height: 150,
                  ),
                ),
                const SizedBox(height: 20,),
                const GreyText(text: "CADASTRE-SE"),
                const SizedBox(height: 20,),
                const GreyText(text: "Nome da Fazenda"),
                InputField(controller: nomeFazendaController, isPassword: false),
                const SizedBox(height: 20,),
                const GreyText(text: "CNPJ"),
                InputField(controller: cnpjController, isPassword: false),
                const SizedBox(height: 20,),
                const GreyText(text: "Senha"),
                InputField(controller: senhaController, isPassword: true),
                const SizedBox(height: 20,),
                const GreyText(text: "Confirmar Senha"),
                InputField(controller: confirmSenhaController, isPassword: true),
                const SizedBox(height: 20,),
                const LoginButton(text: "Cadastrar"),
                const SizedBox(height: 20,),
                const GreyText(text: "Ou cadastre-se com")
              ],
            ),
          ),
        ),
      ),
    );
  }
}