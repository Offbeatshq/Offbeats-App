import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String sender;
  final String content;
  final DateTime timestamp;

  MessageWidget({
    required this.sender,
    required this.content,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 4.0),
          Text(content),
          SizedBox(height: 4.0),
          Text(
            timestamp.toLocal().toString(),
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
