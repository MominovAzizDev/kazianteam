import 'package:flutter/material.dart';

class IdeascardsWidget extends StatelessWidget {
  final int rank;
  final String title;
  final String description;
  final int upvotes;
  final String author;

  const IdeascardsWidget({
    super.key,
    required this.rank,
    required this.title,
    required this.description,
    required this.upvotes,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "#$rank",
                    style: TextStyle(
                      color: Colors.brown.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
            Text(
              description,
              style: TextStyle(color: Colors.black87, fontSize: 13),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.thumb_up, color: Colors.green, size: 16),
                SizedBox(width: 4),
                Text(
                  "$upvotes upvotes",
                  style: TextStyle(color: Colors.green, fontSize: 12),
                ),
                SizedBox(width: 12),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(Icons.person, size: 12, color: Colors.white),
                ),
                SizedBox(width: 4),
                Text(
                  author,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
