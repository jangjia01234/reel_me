import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reel_me/authentication/birthday_screen.dart';
import 'package:reel_me/authentication/widgets/form_button.dart';

import '../constants/gaps.dart';
import '../constants/sizes.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();

  String _password = "";
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();

    _passwordController.addListener(() {
      setState(() {
        _password = _passwordController.text;
      });
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (_password.isEmpty || _isPasswordValid() != null) return;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BirthdayScreen()),
    );
  }

  bool _isPasswordValid() {
    return _password.isNotEmpty && _password.length > 8;
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
                "Create password",
                style: TextStyle(
                  fontSize: Sizes.size16 + Sizes.size2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Gaps.v10,
              TextFormField(
                controller: _passwordController,
                onEditingComplete: _onSubmit,
                obscureText: _obscureText,
                autocorrect: false,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  suffix: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: FaIcon(
                          FontAwesomeIcons.solidCircleXmark,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Gaps.h14,
                      GestureDetector(
                        onTap: () {},
                        child: FaIcon(FontAwesomeIcons.eye),
                      ),
                    ],
                  ),
                  hintText: "Password",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
              ),
              Gaps.v10,
              Text(
                "Your Password must have:",
                style: TextStyle(
                  fontSize: Sizes.size12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.v5,
              Row(
                children: [
                  Icon(
                    _isPasswordValid()
                        ? Icons.check_circle_outline_rounded
                        : Icons.warning_amber_rounded,
                    color: _isPasswordValid()
                        ? Colors.green
                        : Theme.of(context).primaryColor,
                  ),
                  Gaps.h2,
                  Text(
                    "8 to 20 characters",
                    style: TextStyle(
                      fontSize: Sizes.size12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.green,
                  ),
                  Gaps.h2,
                  Text(
                    "Letters, numbers, and special characters",
                    style: TextStyle(
                      fontSize: Sizes.size12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Gaps.v28,
              GestureDetector(
                onTap: _onSubmit,
                child: FormButton(disabled: !_isPasswordValid()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
