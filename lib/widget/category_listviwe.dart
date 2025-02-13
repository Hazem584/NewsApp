import 'package:flutter/material.dart';
import 'package:newsapp/widget/category_news.dart';

class CategoryListviwe extends StatefulWidget {
  const CategoryListviwe({super.key});

  @override
  State<CategoryListviwe> createState() => _CategoryListviweState();
}

class _CategoryListviweState extends State<CategoryListviwe> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryNews();
        },
        itemCount: 5,
      ),
    );
  }
}