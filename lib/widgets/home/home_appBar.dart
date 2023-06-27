import 'package:flutter/material.dart';
import 'package:sevenlearn/gen/assets.gen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hi Sina', style: themeData.textTheme.titleMedium),
              Assets.img.icons.notification.image(width: 24, height: 24),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
          child: Text(
            "Explore today's",
            style: themeData.textTheme.headlineMedium,
          ),
        ),
      ],
    );
  }
}
