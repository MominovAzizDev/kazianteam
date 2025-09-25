import 'package:flutter/material.dart';
import 'package:kaizenteam/view/challenges/widgets/challengeCard_widget.dart';

class Challenges extends StatefulWidget {
  const Challenges({super.key});

  @override
  State<Challenges> createState() => _ChallengesState();
}

class _ChallengesState extends State<Challenges> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          titleSpacing: 0,
          leadingWidth: 60,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              backgroundImage: const AssetImage("assets/coding.png"),
            ),
          ),
          title: const Text(
            "Challenges",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.black),
            ),
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      "3",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 8),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Container(
              color: Colors.grey.shade200,
              child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(text: "Active"),
                  Tab(text: "Completed"),
                  Tab(text: "Upcoming"),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  ChallengecardWidget(
                    title: "Process Improvement Initiative",
                    description:
                        "Share an idea to improve our daily workflow and eliminate waste",
                    isTeam: true,
                    daysLeft: 2,
                    participants: 24,
                    points: 100,
                    difficulty: "Easy",
                    progress: 0.75,
                  ),
                  ChallengecardWidget(
                    title: "5S Workplace Organization",
                    description:
                        "Document and improve your workspace organization using 5S methodology",
                    isTeam: true,
                    daysLeft: 5,
                    participants: 18,
                    points: 250,
                    difficulty: "Medium",
                    progress: 0.3,
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/trophy.png", width: 50),
                  Text(
                    "No Completed Challenges",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("Complete challenges to see them here."),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/trophy.png", width: 50),
                  Text(
                    "No Upcoming Challenges",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("New challenges will appear here when announced."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
