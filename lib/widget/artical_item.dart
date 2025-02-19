import 'package:flutter/material.dart';import 'package:newsapp/model/artical.dart';class ArticalItem extends StatefulWidget {  final ArticalModel articalModel;  const ArticalItem({super.key, required this.articalModel});  @override  _ArticalItemState createState() => _ArticalItemState();}class _ArticalItemState extends State<ArticalItem> {  bool isTitleExpanded = false;  bool isDescriptionExpanded = false;  @override  Widget build(BuildContext context) {    return Padding(      padding: const EdgeInsets.all(15.0),      child: Column(        crossAxisAlignment: CrossAxisAlignment.start,        children: [          ClipRRect(            borderRadius: BorderRadius.circular(40),            child: widget.articalModel.urlToImage != null &&                widget.articalModel.urlToImage!.isNotEmpty                ? Image.network(               widget.articalModel.urlToImage??"https://images.pexels.com/photos/3747132/pexels-photo-3747132.jpeg?auto=compress&cs=tinysrgb&w=600",              width: double.infinity,              height: 210,              fit: BoxFit.cover,            )                : Container(              width: double.infinity,              height: 210,              color: Colors.grey[300],              child: const Center(                child: Icon(Icons.image_not_supported, size: 50),              ),            ),          ),          const SizedBox(height: 5),          GestureDetector(            onTap: () {              setState(() {                isTitleExpanded = !isTitleExpanded;              });            },            child: Text(              widget.articalModel.title ?? "No Title",              maxLines: isTitleExpanded ? null : 1,              overflow: isTitleExpanded ? TextOverflow.visible : TextOverflow.ellipsis,              style: const TextStyle(color: Colors.black, fontSize: 20),            ),          ),          GestureDetector(            onTap: () {              setState(() {                isDescriptionExpanded = !isDescriptionExpanded;              });            },            child: Text(              widget.articalModel.description ?? "No Description",              maxLines: isDescriptionExpanded ? null : 2,              overflow: isDescriptionExpanded ? TextOverflow.visible : TextOverflow.ellipsis,              style: const TextStyle(color: Colors.grey),            ),          ),        ],      ),    );  }}