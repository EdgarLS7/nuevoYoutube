import 'package:flutter/material.dart';

class InputText extends StatelessWidget {

  final String label;
  final TextInputType keyboardType;
  final bool obscureText;

  const InputText({
    Key? key, 
    required this.label, 
    required this.keyboardType, 
    required this.obscureText,
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.black45,
        ),
      ),
    );
  }
}