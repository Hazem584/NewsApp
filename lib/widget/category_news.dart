import 'package:flutter/material.dart';
class CategoryNews extends StatelessWidget {
  const CategoryNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage("https://images.pexels.com/photos/15355037/pexels-photo-15355037/free-photo-of-bowl-of-soup-with-noodles-and-shrimps.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
        backgroundColor: Colors.teal,
        radius: 50,
        child: Text("Health",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20,)),
      ),
    );
  }
}
