import 'dart:developer';

import 'package:apura_930/screens/friends_screen.dart';
import 'package:apura_930/screens/newsfeed_screen.dart';
import 'package:apura_930/screens/notification_screen.dart';
import 'package:apura_930/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  final List<Widget> pages = const [
    NewsfeedScreen(),
    FriendsScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: currentpage,
        onTap: (index) {
          setState(() {
            currentpage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Friends'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Profile'),
        ],
      ),
    );
  }
}
