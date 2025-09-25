import 'package:flutter/material.dart';
import 'package:kaizenteam/view/learning/widgets/learning_widgets.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({super.key});

  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
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
            padding: EdgeInsets.only(left: 12),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade300,
              backgroundImage: AssetImage("assets/coding.png"),
            ),
          ),
          title: Text(
            "Learning",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: Container(
              color: Colors.grey.shade200,
              child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "Required"),
                  Tab(text: "Optional"),
                  Tab(text: "Completed"),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  LearningWidgets(
                    title: "Kaizen Fundamentals",
                    description:
                        "Learn the core principles of continuous improvement and Kaizen methodology",
                    duration: "2 hours",
                    lessons: 8,
                    rating: 4.8,
                    enrolled: 156,
                    dueDate: "2024-01-30",
                    buttonText: "Start Course",
                    onPressed: () {},
                  ),
                  SizedBox(height: 12),
                  LearningWidgets(
                    title: "5S Workplace Organization",
                    description:
                        "Master the 5S system for workplace organization and efficiency",
                    duration: "1.5 hours",
                    lessons: 6,
                    rating: 4.6,
                    enrolled: 203,
                    dueDate: "2024-02-15",
                    buttonText: "Continue Learning",
                    progress: 0.6,
                    onPressed: () {},
                  ),
                ],
              ),
            ),

             LearningWidgets(
                    title: "5S Workplace Organization",
                    description:
                        "Master the 5S system for workplace organization and efficiency",
                    duration: "1.5 hours",
                    lessons: 6,
                    rating: 4.6,
                    enrolled: 203,
                    dueDate: "2024-02-15",
                    buttonText: "Continue Learning",
                    progress: 0.6,
                    onPressed: () {},
                  ),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/trophy.png", width: 50),
                  SizedBox(height: 10),
                  Text(
                    "No Completed Courses",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("Complete courses to see them here."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
