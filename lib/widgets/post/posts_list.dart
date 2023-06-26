import 'package:flutter/material.dart';
import 'package:sevenlearn/data/data.dart';
import 'package:sevenlearn/widgets/post/post_item.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key});
  @override
  Widget build(BuildContext context) {
    final posts = AppDatabase.posts;
    return ListView.builder(
      itemExtent: 141,
      shrinkWrap: true,
      itemCount: posts.length,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        final post = posts[index];
        return PostItem(post: post);
      },
    );
  }
}
