import 'package:flutter/material.dart';
import 'package:reel_me/constants/gaps.dart';
import 'package:reel_me/features/authentication/widgets/form_button.dart';

import '../../constants/sizes.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size32),
        child: Form(
          child: Column(
            children: [
              TextFormField(),
              Gaps.v16,
              TextFormField(),
              Gaps.v28,
              // TODO: 'Next' 대신 다른 텍스트도 넣을 수 있도록 위젯 확장
              FormButton(disabled: false),
            ],
          ),
        ),
      ),
    );
  }
}
