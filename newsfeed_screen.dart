import 'package:apura_930/components/globalappbar_component.dart';
import 'package:flutter/material.dart';
import 'package:apura_930/components/globalappbar_component.dart';
import 'package:apura_930/components/newsfeedcomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {
  final List<Map<String, String>> newsfeed = [
    {
      "username": "Xia Kasai",
      "time": "3 hours ago",
      "status": "Eating my brunch",
      "likes": "150",
      "comments": "15",
      "shares": "7",
    },
    {
      "username": "Carl Andrew",
      "time": "46 minutes ago",
      "status": "On my way to the gym!",
      "likes": "300",
      "comments": "46",
      "shares": "20",
    },
    {
      "username": "Mary jane",
      "time": "5 hours ago",
      "status": "Doing my volcano project",
      "likes": "117",
      "comments": "30",
      "shares": "9",
    },
    {
      "username": "Kai Louise",
      "time": "20 minutes ago",
      "status": "Cleaning my room",
      "likes": "105",
      "comments": "7",
      "shares": "10",
    },
    {
      "username": "Clara Jane",
      "time": "1 hour ago",
      "status": "Picnic with Fam!",
      "likes": "356",
      "comments": "123",
      "shares": "67",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbarComponent(),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: newsfeed.length,
        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            timeposted: post["time"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
          );
        },
      ),
    );
  }
}
