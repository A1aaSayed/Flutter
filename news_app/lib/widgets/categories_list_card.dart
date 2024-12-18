import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      title: 'Technology',
      background: 'assets/technology.jpeg',
    ),
    CategoryModel(
      title: 'Business',
      background: 'assets/business.avif',
    ),
    CategoryModel(
      title: 'Entertainment',
      background: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      title: 'Health',
      background: 'assets/health.avif',
    ),
    CategoryModel(
      title: 'Science',
      background: 'assets/science.avif',
    ),
    CategoryModel(
      title: 'Sports',
      background: 'assets/sports.avif',
    ),
    CategoryModel(
      title: 'General',
      background: 'assets/general.avif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          }),
    );
  }
}
