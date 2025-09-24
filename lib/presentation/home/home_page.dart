import 'package:flutter/material.dart';
import 'package:kaizenteam/presentation/home/widgets/activeChallengeCard_widgets.dart';
import 'package:kaizenteam/presentation/home/widgets/level_point_widgets.dart';
import 'package:kaizenteam/presentation/home/widgets/recentActivityCard_widgets.dart';
import 'package:kaizenteam/presentation/home/widgets/teamProgressCard_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        leadingWidth: 60,
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage("assets/coding.png"),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Home",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "Welcome back, Sarah!",
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.black),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none, color: Colors.black),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                LevelPointWidgets(
                  title: "12",
                  subtitle: "Level",
                  imagePath: "assets/trophy.png",
                ),
                LevelPointWidgets(
                  title: "2,450",
                  subtitle: "Points",
                  imagePath: "assets/trophy.png",
                ),
              ],
            ),

            Card(
              color: Colors.white,
              margin: EdgeInsets.all(12),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Quick Actions",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: Colors.blue,
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.av_timer,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "Join Challenge",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            color: Colors.white,
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.menu_book_sharp,
                                      color: Colors.black,
                                      size: 32,
                                    ),
                                    SizedBox(height: 8),
                                    Text("Start Course"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            ActivechallengecardWidgets(
              title: "Process Improvement Initiative",
              description: "Share an idea to improve our daily workflow",
              type: "team",
              timeLeft: "2 days left",
              participants: 24,
              progress: 0.75,
            ),
            RecentActivityCard(
              activities: [
                RecentactivitycardWidgets(
                  icon: Icons.check_circle,
                  color: Colors.green,
                  text: 'Completed "Kaizen Fundamentals" course',
                  time: "2 hours ago",
                ),
                RecentactivitycardWidgets(
                  icon: Icons.circle_notifications,
                  color: Colors.blue,
                  text: "New improvement challenge available",
                  time: "4 hours ago",
                ),
              ],
            ),

            TeamprogresscardWidgets(
              title: "Team Progress",
              goalText: "Monthly Goal",
              progressPercent: 0.85,
              membersCount: 12,
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
