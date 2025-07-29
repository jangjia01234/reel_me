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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Map<String, String> formData = {};

  void _onSubmitTap() {
    // currentState가 있어야 validate 가능
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        // 에러가 없을 경우
        // Form을 save하면 모든 텍스트 입력에 대해 onSaved 함수 실행
        _formKey.currentState!.save();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size32),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Gaps.v28,
              TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                  ),
                  validator: (value) {
                    // error message
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) {
                      formData['email'] = newValue;
                    }
                  }),
              Gaps.v16,
              TextFormField(
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  hintText: 'Password',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
                validator: (value) {
                  // error message
                  return null;
                },
                onSaved: (newValue) {
                  if (newValue != null) {
                    formData['password'] = newValue;
                  }
                },
              ),
              Gaps.v28,
              // TODO: 'Next' 대신 다른 텍스트도 넣을 수 있도록 위젯 확장
              GestureDetector(
                onTap: _onSubmitTap,
                child: FormButton(disabled: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
