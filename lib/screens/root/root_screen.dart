import 'package:flutter/material.dart';
import 'package:sevenlearn/navigation/bottom_tabs.dart';
import 'package:sevenlearn/screens/root/home_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: HomeScreen()),
          Positioned(bottom: 0, right: 0, left: 0, child: BottomTabs()),
        ],
      ),
    );
  }
}
