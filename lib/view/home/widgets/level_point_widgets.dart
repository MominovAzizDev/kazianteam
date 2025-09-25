import 'package:flutter/material.dart';

class LevelPointWidgets extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  LevelPointWidgets({super.key, required this.title, required this.subtitle, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      child: Card(
        color: Colors.white,
      child: ListTile(
        leading: Image.asset(imagePath),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text(subtitle),
      ),
    ),
    );
  }
}