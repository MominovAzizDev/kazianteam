import 'package:flutter/material.dart';

class RecentactivitycardWidgets {
  final IconData icon;
  final Color color;
  final String text;
  final String time;

  RecentactivitycardWidgets({
    required this.icon,
    required this.color,
    required this.text,
    required this.time,
  });
}

class RecentActivityCard extends StatelessWidget {
  final List<RecentactivitycardWidgets> activities;

  RecentActivityCard({super.key, required this.activities});

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
              "Recent Activity",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 12),
            ...activities.map(
              (activity) => Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: activity.color.withOpacity(0.1),
                      child: Icon(
                        activity.icon,
                        size: 18,
                        color: activity.color,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(activity.text, style: TextStyle(fontSize: 14)),
                          Text(
                            activity.time,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
