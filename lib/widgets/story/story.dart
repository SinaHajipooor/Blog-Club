import 'package:flutter/material.dart';
import 'package:sevenlearn/data/data.dart';

class Story extends StatelessWidget {
  final StoryData story;
  const Story({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(4, 12, 4, 0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: const LinearGradient(begin: Alignment.topLeft, colors: [
                    Color(0xff376AED),
                    Color(0xff49B0E2),
                    Color(0xff9CECFB),
                  ]),
                ),
                child: Container(
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: Image.asset('assets/img/stories/${story.imageFileName}'),
                  ),
                ),
              ),
              Positioned(bottom: 0, right: 0, child: Image.asset('assets/img/icons/${story.iconFileName}', width: 24, height: 24))
            ],
          ),
          const SizedBox(height: 8),
          Text(story.name),
        ],
      ),
    );
  }
}
