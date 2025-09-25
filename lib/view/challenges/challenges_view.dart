import 'package:flutter/material.dart';

class ChallengesView extends StatelessWidget {
  final String title;
  final String description;
  final int points;
  final int participants;
  final String timeLeft;
  final double progress;

  const ChallengesView({
    super.key,
    required this.title,
    required this.description,
    required this.points,
    required this.participants,
    required this.timeLeft,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Challenges")),
      body: SingleChildScrollView(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "team",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      "$points",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      " points",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),

                SizedBox(height: 8),

                Text(
                  description,
                  style: TextStyle(color: Colors.black54, fontSize: 13),
                ),

                SizedBox(height: 12),

                Row(
                  children: [
                    Icon(Icons.access_time, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      timeLeft,
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.people_alt_outlined,
                      size: 16,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "$participants participants",
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                  ],
                ),

                SizedBox(height: 12),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Progress",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                    SizedBox(height: 4),
                    LinearProgressIndicator(
                      value: progress,
                      minHeight: 8,
                      backgroundColor: Colors.grey.shade300,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "${(progress * 100).toInt()}%",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ],
                ),

                SizedBox(height: 16),
                Text(
                  "Submit Your Entry",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                SizedBox(height: 12),

                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _entryButton(Icons.photo_camera, "Photo"),
                    _entryButton(Icons.upload_file, "Video"),
                    _entryButton(Icons.text_snippet, "Text"),
                    _entryButton(Icons.mic, "Voice"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _entryButton(IconData icon, String label) {
    return OutlinedButton.icon(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.grey.shade300),
        padding: EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      icon: Icon(icon, color: Colors.black),
      label: Text(label, style: TextStyle(color: Colors.black)),
    );
  }
}
