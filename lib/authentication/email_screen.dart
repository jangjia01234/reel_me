import 'package:flutter/material.dart';
import 'package:reel_me/authentication/password_screen.dart';
import 'package:reel_me/authentication/widgets/form_button.dart';

import '../constants/gaps.dart';
import '../constants/sizes.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final TextEditingController _emailController = TextEditingController();

  String _email = "";

  @override
  void initState() {
    super.initState();

    _emailController.addListener(() {
      setState(() {
        _email = _emailController.text;
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (_email.isEmpty || _isEmailValid() != null) return;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PasswordScreen()),
    );
  }

  String? _isEmailValid() {
    if (_email.isEmpty) return null;
    final regExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (!regExp.hasMatch(_email)) {
      return "Email not valid";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign up",
          style: TextStyle(fontSize: Sizes.size16, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v20,
              Text(
                "What is your email?",
                style: TextStyle(
                  fontSize: Sizes.size16 + Sizes.size2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Gaps.v10,
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                onEditingComplete: _onSubmit,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  hintText: "Email",
                  errorText: _isEmailValid(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
              ),
              Gaps.v28,
              GestureDetector(
                onTap: _onSubmit,
                child: FormButton(
                  disabled: _email.isEmpty || _isEmailValid() != null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
