import 'package:flutter/material.dart';
import 'package:newsapp/model/category.dart';
import 'package:newsapp/screens/category_deatal.dart';

class CategoryNews extends StatelessWidget {
  final Category x;

  const CategoryNews({super.key, required this.x});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryDetailsPage(category: x),
            ),
          );
        },
        child: CircleAvatar(
          backgroundImage: NetworkImage(x.image),
          backgroundColor: Colors.teal,
          radius: 50,
          child: Text(
            x.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}