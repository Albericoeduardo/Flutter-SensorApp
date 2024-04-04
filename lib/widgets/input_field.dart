import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  const InputField({super.key, required this.controller, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty){
          return 'Por favor, preencha este campo';
        }
      },
      obscureText: isPassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none
        ),
        filled: true,
        fillColor: const Color.fromARGB(153, 250, 253, 214)
      ),
    );
  }
}