import 'dart:html';

import 'package:flutter/material.dart';

class PreliminaryExam extends StatefulWidget {
  const PreliminaryExam({super.key});

  @override
  State<PreliminaryExam> createState() => _PreliminaryExam();
}

class _PreliminaryExam extends State<PreliminaryExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          "Prelim Exam",
          style: TextStyle(
            height: 5,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kaye Claire N. Aurelio",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        SizedBox(height: 32),
        Container(
            width: 150,
            height: 150,
            color: Colors.pink,
            child: Center(
                child: Text(
              "Box 1",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ))),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 150,
                height: 150,
                color: Colors.pink,
                alignment: Alignment.center,
                child: Center(
                    child: Text(
                  "Box 2",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ))),
            SizedBox(width: 40),
            Container(
              width: 150,
              height: 150,
              color: Colors.pink,
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  "Box 3",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
