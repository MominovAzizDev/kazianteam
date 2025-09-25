import 'package:flutter/material.dart';
import 'package:kaizenteam/view/ideas/widgets/idea_card_widget.dart';
import 'package:kaizenteam/view/ideas/widgets/ideascards_widget.dart';

class IdeasPage extends StatefulWidget {
  @override
  State<IdeasPage> createState() => _IdeasPageState();
}

class _IdeasPageState extends State<IdeasPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            backgroundImage: AssetImage("assets/coding.png"),
          ),
        ),
        title: Text(
          "Idea Box",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications_none, color: Colors.black),
                onPressed: () {},
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
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Idea Box",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      icon: Icon(Icons.add, color: Colors.white),
                      label: Text(
                        "New Idea",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                tabs: [
                  Tab(text: "All Ideas"),
                  Tab(text: "My Ideas"),
                  Tab(text: "Top Voted"),
                ],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildIdeasList(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add),
                SizedBox(height: 10),
                Text(
                  "No Ideas Yet",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("Submit your first idea to get started."),
              ],
            ),
          ),
          ListView(
            padding: EdgeInsets.all(16),
            children: [
              IdeascardsWidget(
                rank: 1,
                title: "Flexible Work Hours Policy",
                description:
                    "Implement flexible work schedule allowing employees to choose their start and end times.",
                upvotes: 42,
                author: "Maria Rodriguez",
              ),
              SizedBox(height: 12),
              IdeascardsWidget(
                rank: 2,
                title: "Mobile App for Employee Directory",
                description:
                    "Create a mobile app that allows employees to easily find and contact colleagues across departments.",
                upvotes: 24,
                author: "Alex Chen",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIdeasList() {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        IdeaCardWidget(
          title: "Mobile App for Employee Directory",
          description:
              "Create a mobile app that allows employees to easily find and contact colleagues across departments.",
          author: "Alex Chen",
          date: "2024-01-12",
          status: "Under Review",
          statusColor: Colors.amber.shade200,
          likes: 24,
          dislikes: 3,
          comments: 8,
        ),
        SizedBox(height: 12),
        IdeaCardWidget(
          title: "Flexible Work Hours Policy",
          description:
              "Implement flexible work schedule allowing employees to choose their start and end times.",
          author: "Maria Rodriguez",
          date: "2024-01-10",
          status: "Approved",
          statusColor: Colors.green.shade200,
          likes: 42,
          dislikes: 8,
          comments: 15,
        ),
      ],
    );
  }
}
