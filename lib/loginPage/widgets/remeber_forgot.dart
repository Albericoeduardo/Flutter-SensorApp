import 'package:flutter/material.dart';
import 'package:flutter_farmapp/loginPage/widgets/grey_text.dart';

class RememberForgot extends StatefulWidget {
  const RememberForgot({super.key,});

  @override
  State<RememberForgot> createState() => _RememberForgotState();
}

class _RememberForgotState extends State<RememberForgot> {
  bool rememberUser = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: rememberUser, onChanged: (value) {
              setState(() {
                rememberUser = value!;
              });
            }),
            const GreyText(text: "Lembrar-me")
          ],
        ),
        const GreyText(text: "Esqueci minha senha")
      ],
    );
  }
}