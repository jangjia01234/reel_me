import 'package:flutter/material.dart';
import 'package:reel_me/constants/gaps.dart';

import '../../constants/sizes.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const interests = [
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

    return Scaffold(
      appBar: AppBar(
        title: Text("Choose your interests"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size32),
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
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: Sizes.size16, horizontal: Sizes.size20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.size32),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withValues(alpha: 0.1),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.05),
                              blurRadius: 5,
                              spreadRadius: 5,
                            )
                          ]),
                      child: Text(
                        interest,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Skip"),
            Text("Next"),
          ],
        ),
      ),
    );
  }
}
