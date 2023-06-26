import 'package:flutter/material.dart';
import 'package:sevenlearn/widgets/category/categories_list.dart';
import 'package:sevenlearn/widgets/home/home_appBar.dart';
import 'package:sevenlearn/widgets/story/stories_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeAppBar(),
              StoriesList(),
              SizedBox(height: 16),
              CategoriesList(),
            ],
          ),
        ),
      ),
    );
  }
}
