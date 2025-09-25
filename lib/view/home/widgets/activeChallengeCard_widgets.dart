import 'package:flutter/material.dart';

class ActivechallengecardWidgets extends StatelessWidget {
  final String title;
  final String description;
  final String type; 
  final String timeLeft;
  final int participants;
  final double progress;

  const ActivechallengecardWidgets({
    super.key,
    required this.title,
    required this.description,
    required this.type,
    required this.timeLeft,
    required this.participants,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Active Challenge",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
           SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding:
                     EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    type,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            ),
            SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(color: Colors.black54, fontSize: 13),
            ),
           SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.access_time, size: 16, color: Colors.black54),
                SizedBox(width: 4),
                Text(timeLeft, style: TextStyle(color: Colors.black54)),
                SizedBox(width: 16),
                Icon(Icons.group, size: 16, color: Colors.black54),
                SizedBox(width: 4),
                Text("$participants participants",
                    style: TextStyle(color: Colors.black54)),
              ],
            ),
            SizedBox(height: 12),
            Text("Progress",
                style: TextStyle(fontWeight: FontWeight.w500)),
            SizedBox(height: 6),
            LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              backgroundColor: Colors.grey[300],
              valueColor:
                  AlwaysStoppedAnimation<Color>(Colors.black87),
            ),
            SizedBox(height: 4),
            Align(
              alignment: Alignment.centerRight,
              child: Text("${(progress * 100).toInt()}%"),
            ),
          ],
        ),
      ),
    );
  }
}
