import 'package:flutter/material.dart';
import 'package:kaizenteam/view/challenges/challenges.dart';
import 'package:kaizenteam/view/home/home_page.dart';
import 'package:kaizenteam/view/ideas/ideas_page.dart';
import 'package:kaizenteam/view/learning/learning_page.dart';
import 'package:kaizenteam/view/profile/profile_page.dart';

class BottomnavigationbarPage extends StatefulWidget {
  @override
  State<BottomnavigationbarPage> createState() => _BottomnavigationbarPageState();
}

class _BottomnavigationbarPageState extends State<BottomnavigationbarPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    Challenges(),
    LearningPage(),
    IdeasPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.album_outlined),
            label: "Challenges",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: "Learning",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.tips_and_updates_outlined),
            label: "Ideas",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
