import 'package:flutter/material.dart';
import 'package:kaizenteam/view/challenges/challenges_view.dart';

class ChallengecardWidget extends StatelessWidget {
  final String title;
  final String description;
  final bool isTeam;
  final int daysLeft;
  final int participants;
  final int points;
  final String difficulty;
  final double progress; 

  const ChallengecardWidget({
    super.key,
    required this.title,
    required this.description,
    required this.isTeam,
    required this.daysLeft,
    required this.participants,
    required this.points,
    required this.difficulty,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 6,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              if (isTeam)
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "team",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
            ],
          ),
          SizedBox(height: 6),
          Text(
            description,
            style: TextStyle(color: Colors.black87, fontSize: 14),
          ),
          SizedBox(height: 12),

          Row(
            children: [
              Icon(Icons.access_time, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text("$daysLeft days left",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
              SizedBox(width: 16),
              Icon(Icons.people, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text("$participants participants",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ],
          ),
          SizedBox(height: 8),

          Row(
            children: [
              Icon(Icons.emoji_events, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text("$points points",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
              SizedBox(width: 12),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  difficulty,
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),

          SizedBox(height: 16),
          Text("Progress",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          SizedBox(height: 6),

          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 10,
                    backgroundColor: Colors.grey.shade300,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Text("${(progress * 100).toInt()}%",
                  style: TextStyle(fontSize: 13)),
            ],
          ),

          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChallengesView(
                            title: "Process Improvement Initiative",
                            description:
                                "Share an idea to improve our daily workflow and eliminate waste",
                            points: 100,
                            participants: 24,
                            timeLeft: "2 days left",
                            progress: 0.75,
                          ),
                        ),
                      );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.symmetric(vertical: 14),
              ),
              child: Text(
                "View Details",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}