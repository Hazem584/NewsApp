import 'package:flutter/material.dart';
import 'package:newsapp/model/category.dart';
import 'package:newsapp/widget/category_news.dart';

class CategoryListviwe extends StatefulWidget {
  const CategoryListviwe({super.key});

  @override
  State<CategoryListviwe> createState() => _CategoryListviweState();
}

class _CategoryListviweState extends State<CategoryListviwe> {
  final List<Category> catgories = [
    Category(title: "Sport", image: "https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg?auto=compress&cs=tinysrgb&w=600"),
    Category(title: "Health", image: "https://images.pexels.com/photos/287227/pexels-photo-287227.jpeg?auto=compress&cs=tinysrgb&w=600"),
    Category(title: "Entertainment", image: "https://images.pexels.com/photos/225238/pexels-photo-225238.jpeg?auto=compress&cs=tinysrgb&w=600"),
    Category(title: "Business", image: "https://images.pexels.com/photos/265087/pexels-photo-265087.jpeg?auto=compress&cs=tinysrgb&w=600"),
    Category(title: "Science", image: "https://images.pexels.com/photos/2280571/pexels-photo-2280571.jpeg?auto=compress&cs=tinysrgb&w=600"),
    Category(title: "Technology", image: "https://images.pexels.com/photos/6153738/pexels-photo-6153738.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=279.825&fit=crop&h=453.05")
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryNews(x: catgories[index]);
        },
        itemCount: catgories.length,
      ),
    );
  }
}