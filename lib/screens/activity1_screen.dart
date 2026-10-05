import 'dart:html';

import 'package:flutter/material.dart';

class Activity1Screen extends StatefulWidget {
  const Activity1Screen({super.key});

  @override
  State<Activity1Screen> createState() => _Activity1ScreenState();
}

class _Activity1ScreenState extends State<Activity1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity 1")),
      body: Column(children: [
        Text(
          "Activity 1",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pink",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(width: 29),
            Text(
              "Blue",
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
        SizedBox(height: 32),
        Container(
            width: 250,
            height: 250,
            color: Colors.yellow,
            child: Center(
                child: Text(
              "choose a color",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ))),
      ]),
    );
  }
}
