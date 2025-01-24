import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://example.com/profile_picture.jpg'),
          ),
          SizedBox(height: 16.0),
          Text(
            'John Doe',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            'Developer, Designer',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 16.0),
          Text(
            'Skills',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Wrap(
            spacing: 8.0,
            children: [
              Chip(label: Text('Flutter')),
              Chip(label: Text('Dart')),
              Chip(label: Text('UI/UX Design')),
            ],
          ),
          SizedBox(height: 16.0),
          Text(
            'Interests',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Wrap(
            spacing: 8.0,
            children: [
              Chip(label: Text('Mobile Development')),
              Chip(label: Text('Open Source')),
              Chip(label: Text('Gaming')),
            ],
          ),
          SizedBox(height: 16.0),
          Text(
            'Badges and Achievements',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // Add BadgeWidget and AchievementWidget here
        ],
      ),
    );
  }
}
