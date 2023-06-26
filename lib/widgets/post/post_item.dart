import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sevenlearn/data/data.dart';
import 'package:sevenlearn/main.dart';

class PostItem extends StatelessWidget {
  final PostData post;
  const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Container(
      height: 149,
      margin: const EdgeInsets.fromLTRB(32, 8, 32, 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Color(0x1a5285ff),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset('assets/img/posts/small/${post.imageFileName}'),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.caption,
                    style: const TextStyle(
                      fontFamily: MyApp.defaultFontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(
                        0xff376AED,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(post.title, style: themeData.textTheme.bodySmall),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
