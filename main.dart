import 'package:apura_930/screens/activity1_screen.dart';
import 'package:apura_930/screens/activity1_screen.dart';
import 'package:apura_930/screens/home_screen.dart';
import 'package:apura_930/screens/name_screen.dart';
import 'package:apura_930/screens/profile_screen.dart';
import 'package:apura_930/screens/prelim_exam.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: Mainscreen(),
    );
  }
}
