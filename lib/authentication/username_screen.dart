import 'package:flutter/material.dart';

import '../constants/gaps.dart';
import '../constants/sizes.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  final TextEditingController _usernameController = TextEditingController();

  String _username = ""; // private 처리를 위해 _ 표시

  @override
  void initState() {
    super.initState();

    _usernameController.addListener(() {
      setState(() {
        _username = _usernameController.text;
      });
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
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
              Text(
                "Create username",
                style: TextStyle(
                  fontSize: Sizes.size16 + Sizes.size2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Gaps.v4,
              Text(
                "You can always change this later.",
                style: TextStyle(
                  fontSize: Sizes.size14,
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                ),
              ),
              Gaps.v10,
              TextFormField(
                controller: _usernameController,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  hintText: "Username",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
              ),
              Gaps.v28,
              FractionallySizedBox(
                widthFactor: 1,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.size14,
                    horizontal: Sizes.size10,
                  ),
                  color: _username.isEmpty
                      ? Theme.of(context).primaryColor
                      : Colors.grey.shade200,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: Sizes.size14,
                          fontWeight: FontWeight.w500,
                          color: _username.isEmpty
                              ? Colors.white
                              : Colors.black45,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
