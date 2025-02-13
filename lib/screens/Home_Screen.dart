import 'package:flutter/material.dart';
import 'package:newsapp/widget/artical_item.dart';
import 'package:newsapp/widget/artical_listView.dart';
import 'package:newsapp/widget/category_listviwe.dart';
import 'package:newsapp/widget/category_news.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("News App"),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
         SliverToBoxAdapter(child: CategoryListviwe()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Genral News",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
          ),
          ArticalListview(),
        ],
      ),
    );
  }
}





