import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hi I miss you",
            style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Take care.",
            style: TextStyle(color: Colors.red),
          ),
          Row(
            children: [
              Text(
                "Beautiful View",
                style: TextStyle(color: Colors.yellow),
              ),
            ],
          )
        ],
      ),
    );
  }
}
