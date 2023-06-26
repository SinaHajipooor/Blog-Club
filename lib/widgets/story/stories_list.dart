import 'package:flutter/material.dart';
import 'package:sevenlearn/widgets/story/story.dart';
import '../../data/data.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final stories = AppDatabase.stories;
    return SizedBox(
      width: deviceSize.width,
      height: 110,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
        itemBuilder: (context, index) {
          final story = stories[index];
          return Story(story: story);
        },
      ),
    );
  }
}
