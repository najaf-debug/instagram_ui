// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/Screens/Heart/heartscreen.dart';
import 'package:instagram_ui/Screens/Home/homescreen.dart';
import 'package:instagram_ui/Screens/Post/postscreen.dart';
import 'package:instagram_ui/Screens/Profile/profilescreen.dart';
import 'package:instagram_ui/Screens/Search/searchscreen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex, // For changing icon colors of nav items
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.plus_app), label: "Post"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart), label: "Heart"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: "Pofile"),
          ]),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}
