import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text("sign up"),
              Text("sign up"),
              Text("sign up"),
              Text("sign up"),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
