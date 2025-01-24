import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final String badgeName;
  final IconData badgeIcon;

  BadgeWidget({required this.badgeName, required this.badgeIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Icon(badgeIcon, color: Colors.white),
          SizedBox(width: 8.0),
          Text(
            badgeName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
