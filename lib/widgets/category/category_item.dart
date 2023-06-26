import 'package:flutter/material.dart';
import 'package:sevenlearn/data/data.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: 100,
          right: 65,
          left: 65,
          bottom: 24,
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Color(0xaa0D253C),
              ),
            ]),
          ),
        ),
        Positioned.fill(
          child: Container(
            margin: const EdgeInsets.fromLTRB(8, 0, 8, 16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(32),
            ),
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  Color(0xff0D253C),
                  Colors.transparent,
                ],
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.asset(
                'assets/img/posts/large/${category.imageFileName}',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(bottom: 48, left: 42, child: Text(category.title, style: Theme.of(context).textTheme.titleLarge!.apply(color: Colors.white))),
      ],
    );
  }
}
