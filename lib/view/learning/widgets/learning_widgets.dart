import 'package:flutter/material.dart';

class LearningWidgets extends StatelessWidget {
  final String title;
  final String description;
  final String duration;
  final int lessons;
  final double rating;
  final int enrolled;
  final String? dueDate;
  final String buttonText;
  final double? progress;
  final VoidCallback onPressed;

  const LearningWidgets({
    super.key,
    required this.title,
    required this.description,
    required this.duration,
    required this.lessons,
    required this.rating,
    required this.enrolled,
    required this.buttonText,
    required this.onPressed,
    this.dueDate,
    this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                    color: Colors.red.shade400,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "Required",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
            Text(
              description,
              style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.access_time, size: 16),
                    SizedBox(width: 4),
                    Text(duration, style: TextStyle(fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 4),
                    Icon(Icons.menu_book_outlined, size: 16),
                    Text("$lessons lessons", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    SizedBox(width: 4),
                    Text("$rating", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.people_alt_outlined, size: 16),
                    SizedBox(width: 4),
                    Text("$enrolled enrolled", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            if (progress != null) ...[
              Text("Progress", style: TextStyle(fontSize: 12)),
              SizedBox(height: 4),
              LinearProgressIndicator(
                value: progress,
                minHeight: 8,
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              ),
              SizedBox(height: 12),
            ],
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "Due by $dueDate",
                style: TextStyle(
                  color: Colors.red.shade700,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: onPressed,
                child: Text(buttonText, style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
