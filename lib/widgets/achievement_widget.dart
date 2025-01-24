import 'package:flutter/material.dart';

class AchievementWidget extends StatelessWidget {
  final String achievementName;
  final IconData achievementIcon;

  AchievementWidget({required this.achievementName, required this.achievementIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Icon(achievementIcon, color: Colors.white),
          SizedBox(width: 8.0),
          Text(
            achievementName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
