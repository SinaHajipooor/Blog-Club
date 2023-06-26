import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sevenlearn/data/data.dart';

class PostItemIcons extends StatelessWidget {
  final PostData post;
  const PostItemIcons({super.key, required this.post});
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          CupertinoIcons.hand_thumbsup,
          size: 16,
          color: themeData.textTheme.bodyMedium!.color,
        ),
        const SizedBox(width: 4),
        Text(post.likes, style: themeData.textTheme.bodyMedium),
        const SizedBox(width: 16),
        Icon(CupertinoIcons.clock, size: 16, color: themeData.textTheme.bodyMedium!.color),
        const SizedBox(width: 4),
        Text(post.time, style: themeData.textTheme.bodyMedium),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Icon(
              CupertinoIcons.bookmark,
              size: 16,
              color: themeData.textTheme.bodyMedium!.color,
            ),
          ),
        )
      ],
    );
  }
}
