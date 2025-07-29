import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reel_me/features/authentication/widgets/form_button.dart';
import 'package:reel_me/features/onboarding/interests_screen.dart';

import '../../constants/gaps.dart';
import '../../constants/sizes.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  final TextEditingController _birthdayController = TextEditingController();

  DateTime maxDate = DateTime.now().add(Duration(days: -(365 * 12)));

  @override
  void initState() {
    super.initState();
    _setNextFieldDate(maxDate);
  }

  @override
  void dispose() {
    _birthdayController.dispose();
    super.dispose();
  }

  void _onNextTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => InterestsScreen(),
      ),
    );
  }

  void _setNextFieldDate(DateTime time) {
    final textDate = maxDate.toString().split(' ').first;
    _birthdayController.value = TextEditingValue(text: textDate);
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
              // TODO: 우측 이미지 추가
              Text(
                "When's your birthday?",
                style: TextStyle(
                  fontSize: Sizes.size16 + Sizes.size2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Gaps.v4,
              Text(
                "Your birthday won't be shown publicly.",
                style: TextStyle(
                  fontSize: Sizes.size14,
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                ),
              ),
              Gaps.v10,
              TextFormField(
                readOnly: true,
                controller: _birthdayController,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
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
                onTap: _onNextTap,
                child: FormButton(disabled: false),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: SizedBox(
          height: 300,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: maxDate,
            maximumDate: maxDate,
            onDateTimeChanged: _setNextFieldDate,
          ),
        ),
      ),
    );
  }
}
