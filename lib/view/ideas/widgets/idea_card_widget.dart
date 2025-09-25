import 'package:flutter/material.dart';

class IdeaCardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String author;
  final String date;
  final String status;
  final Color statusColor;
  final int likes;
  final int dislikes;
  final int comments;

  const IdeaCardWidget({
    super.key,
    required this.title,
    required this.description,
    required this.author,
    required this.date,
    required this.status,
    required this.statusColor,
    required this.likes,
    required this.dislikes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(status, style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
            SizedBox(height: 6),
            Text(
              description,
              style: TextStyle(color: Colors.black87, fontSize: 13),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(Icons.person, size: 14, color: Colors.white),
                ),
                SizedBox(width: 6),
                Text(author, style: TextStyle(fontSize: 12)),
                SizedBox(width: 6),
                Text("•", style: TextStyle(color: Colors.grey)),
                SizedBox(width: 6),
                Icon(Icons.access_time, size: 14, color: Colors.black54),
                SizedBox(width: 4),
                Text(date, style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Icon(
                  Icons.thumb_up_alt_outlined,
                  size: 16,
                  color: Colors.green,
                ),
                SizedBox(width: 4),
                Text("$likes", style: TextStyle(fontSize: 12)),
                SizedBox(width: 12),
                Icon(
                  Icons.thumb_down_alt_outlined,
                  size: 16,
                  color: Colors.red,
                ),
                SizedBox(width: 4),
                Text("$dislikes", style: TextStyle(fontSize: 12)),
                SizedBox(width: 12),
                Icon(
                  Icons.chat_bubble_outline,
                  size: 16,
                  color: Colors.black54,
                ),
                SizedBox(width: 4),
                Text("$comments", style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(height: 12),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: Text("View Details"),
            ),
          ],
        ),
      ),
    );
  }
}
