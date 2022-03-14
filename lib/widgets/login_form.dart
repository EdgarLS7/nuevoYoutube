import 'package:flt_adaptable/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Form(
        child: Column(
          children: const [
            InputText(
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              label: 'Email Address',
            ),
            InputText(
              keyboardType: TextInputType.text,
              obscureText: true,
              label: 'Password',
            ),
          ],
        )
      ),
    );
  }
}