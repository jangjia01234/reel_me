import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reel_me/constants/gaps.dart';
import 'package:reel_me/features/authentication/username_screen.dart';
import 'package:reel_me/features/authentication/widgets/auth_button.dart';
import 'package:reel_me/utils.dart';

import '../../constants/sizes.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  void _onAuthButtonTap(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => const UsernameScreen()));
  }

  void _onLoginTap(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Gaps.v72,
                  Text(
                    "Sign up for ReelMe",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: Colors.black),
                  ),
                  Gaps.v10,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Opacity(
                      opacity: 0.7,
                      child: Text(
                        "Create a profile, follow other accounts, make your own videos, and more.",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Gaps.v32,
                  GestureDetector(
                    onTap: () => _onAuthButtonTap(context),
                    child: AuthButton(
                      text: 'Use phone or email',
                      icon: FaIcon(FontAwesomeIcons.user, size: 18),
                    ),
                  ),
                  Gaps.v12,
                  AuthButton(
                    icon: FaIcon(FontAwesomeIcons.facebook, size: 18),
                    text: "Continue with Facebook",
                  ),
                  Gaps.v12,
                  AuthButton(
                    icon: FaIcon(FontAwesomeIcons.apple, size: 18),
                    text: "Continue with Apple",
                  ),
                  Gaps.v12,
                  AuthButton(
                    icon: FaIcon(FontAwesomeIcons.google, size: 18),
                    text: "Continue with Google",
                  ),
                  Gaps.v40,
                  FaIcon(FontAwesomeIcons.chevronDown, size: 14),
                ],
              ),
              Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: Sizes.size11,
                        color: Colors.grey.shade600,
                      ),
                      children: <TextSpan>[
                        const TextSpan(text: 'By continuing, you agree to our'),
                        TextSpan(
                          text: ' Terms of Service ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const TextSpan(
                          text: 'and acknowledge that you have read our',
                        ),
                        TextSpan(
                          text: ' Privacy Policy ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const TextSpan(
                          text:
                              'to learn how we collect, use, and share your data.',
                        ),
                      ],
                    ),
                  ),
                  Gaps.v16,
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: isDarkMode(context) ? null : Colors.grey.shade50,
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: TextStyle(fontSize: Sizes.size14),
            ),
            Gaps.h5,
            GestureDetector(
              onTap: () => _onLoginTap(context),
              child: Text(
                "Log in",
                style: TextStyle(
                  fontSize: Sizes.size14,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
