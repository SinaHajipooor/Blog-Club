import 'package:flutter/material.dart';

class PostsListHeader extends StatelessWidget {
  const PostsListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Latest News', style: themeData.titleLarge),
          TextButton(
            onPressed: () {},
            child: const Text(
              'More',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
