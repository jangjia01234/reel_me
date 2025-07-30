import 'package:flutter/material.dart';
import 'package:reel_me/constants/gaps.dart';
import 'package:reel_me/features/onboarding/widgets/interest_button.dart';

import '../../constants/sizes.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({super.key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  static const interests = [
    "Daily Life",
    "Comedy",
    "Entertainment",
    "Animals",
    "Food",
    "Beauty & Style",
    "Drama",
    "Learning",
    "Talent",
    "Sports",
    "Auto",
    "Family",
    "Fitness & Health",
    "DIY & Life Hacks",
    "Arts & Crafts",
    "Dance",
    "Outdoors",
    "Oddly Satisfying",
    "Home & Garden",
    "Daily Life",
    "Comedy",
    "Entertainment",
    "Animals",
    "Food",
    "Beauty & Style",
    "Drama",
    "Learning",
    "Talent",
    "Sports",
    "Auto",
    "Family",
    "Fitness & Health",
    "DIY & Life Hacks",
    "Arts & Crafts",
    "Dance",
    "Outdoors",
    "Oddly Satisfying",
    "Home & Garden",
  ];

  final ScrollController _scrollController = ScrollController();

  bool _showTitle = false;

  void initState() {
    super.initState();

    _scrollController.addListener(() {
      _onChangeOpacity();
    });
  }

  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onChangeOpacity() {
    if (_scrollController.offset > 50) {
      if (_showTitle) return;
      setState(() {
        _showTitle = true;
      });
    } else {
      setState(() {
        _showTitle = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedOpacity(
          opacity: _showTitle ? 1 : 0,
          duration: Duration(milliseconds: 200),
          child: Text("Choose your interests"),
        ),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.only(
              left: Sizes.size32,
              right: Sizes.size32,
              bottom: Sizes.size16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.v28,
                Text(
                  "Choose your Interests",
                  style: TextStyle(
                    fontSize: Sizes.size36,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Gaps.v10,
                Text(
                  "Got better video recommendations",
                  style: TextStyle(
                    fontSize: Sizes.size16 + Sizes.size2,
                    color: Colors.black87,
                  ),
                ),
                Gaps.v60,
                Wrap(
                  spacing: 16,
                  runSpacing: 20,
                  children: [
                    for (var interest in interests)
                      InterestButton(interest: interest),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.only(
            top: Sizes.size16,
            bottom: Sizes.size48,
            left: Sizes.size24,
            right: Sizes.size24,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.size14,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(Sizes.size5)),
            ),
            child: Text(
              "Next",
              style: TextStyle(
                fontSize: Sizes.size14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
