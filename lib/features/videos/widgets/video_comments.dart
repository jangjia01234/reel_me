import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reel_me/constants/gaps.dart';
import 'package:reel_me/constants/sizes.dart';

class VideoComments extends StatefulWidget {
  const VideoComments({super.key});

  @override
  State<VideoComments> createState() => _VideoCommentsState();
}

class _VideoCommentsState extends State<VideoComments> {
  void _onClosePressed() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.size14),
      ),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade50,
          automaticallyImplyLeading: false, // '<' 표시 제거
          title: Text("22796 comments"),
          actions: [
            IconButton(
              onPressed: _onClosePressed,
              icon: FaIcon(FontAwesomeIcons.xmark),
            )
          ],
        ),
        body: ListView.separated(
          padding: EdgeInsets.symmetric(
            vertical: Sizes.size10,
            horizontal: Sizes.size16,
          ),
          separatorBuilder: (context, index) => Gaps.v20,
          itemCount: 10,
          itemBuilder: (context, index) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 18,
                child: Text("니노"),
              ),
              Gaps.h10,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '니꼬',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Sizes.size14,
                          color: Colors.grey.shade500),
                    ),
                    Gaps.v3,
                    Text(
                        "That's not it l've seen the same thing but also in a cave,"),
                  ],
                ),
              ),
              Gaps.h10,
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.heart,
                    size: Sizes.size20,
                    color: Colors.grey.shade500,
                  ),
                  Gaps.v2,
                  Text(
                    '52.2K',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size10,
            vertical: Sizes.size12,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: Sizes.size12,
                backgroundColor: Colors.grey.shade500,
                foregroundColor: Colors.white,
                child: Center(
                  child: Text(
                    "니노",
                    style: TextStyle(fontSize: Sizes.size10),
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
