import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/images/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/images/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/images/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/images/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/images/sports.avif',
      categoryName: 'Sport',
    ),
    CategoryModel(
      image: 'assets/images/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/images/general.avif',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90, //the same height like the card
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
