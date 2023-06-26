import 'package:flutter/material.dart';

class BottomTabItem extends StatelessWidget {
  final String iconFileName;
  final String activeIconFileName;
  final String title;
  const BottomTabItem({super.key, required this.iconFileName, required this.activeIconFileName, required this.title});
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/img/icons/$iconFileName'),
        const SizedBox(height: 4),
        Text(title, style: themeData.bodySmall),
      ],
    );
  }
}
