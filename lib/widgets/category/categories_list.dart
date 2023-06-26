import 'package:flutter/material.dart';
import 'package:sevenlearn/data/data.dart';
import 'package:sevenlearn/widgets/carousel/carousel_slider.dart';
import 'package:sevenlearn/widgets/category/category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = AppDatabase.categories;
    return CarouselSlider.builder(
      itemCount: categories.length,
      options: CarouselOptions(
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.8,
        aspectRatio: 1.2,
        initialPage: 0,
        disableCenter: true,
        scrollPhysics: const BouncingScrollPhysics(),
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
      itemBuilder: (context, index, realIndex) {
        return CategoryItem(category: categories[realIndex]);
      },
    );
  }
}
