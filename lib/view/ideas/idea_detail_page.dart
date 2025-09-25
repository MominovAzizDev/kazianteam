import 'package:flutter/material.dart';

class IdeaDetailPage extends StatefulWidget {
  final Map<String, dynamic> idea;

  IdeaDetailPage({required this.idea});

  @override
  _IdeaDetailPageState createState() => _IdeaDetailPageState();
}

class _IdeaDetailPageState extends State<IdeaDetailPage> {
  final _commentController = TextEditingController();
  late Map<String, dynamic> updatedIdea;

  @override
  void initState() {
    super.initState();
    updatedIdea = Map.from(widget.idea);
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Idea Box"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: updatedIdea["statusColor"],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(updatedIdea["status"]),
                ),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(updatedIdea["category"]),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              updatedIdea["title"],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                CircleAvatar(radius: 12, backgroundColor: Colors.grey.shade300),
                SizedBox(width: 6),
                Text(updatedIdea["author"]),
                SizedBox(width: 6),
                Text("•"),
                SizedBox(width: 6),
                Text(updatedIdea["category"]),
              ],
            ),
            SizedBox(height: 12),
            Text(updatedIdea["description"]),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.thumb_up, size: 20, color: Colors.green),
                SizedBox(width: 4),
                Text("${updatedIdea["likes"]}"),
                SizedBox(width: 16),
                Icon(Icons.thumb_down, size: 20, color: Colors.red),
                SizedBox(width: 4),
                Text("${updatedIdea["dislikes"]}"),
                SizedBox(width: 16),
                Icon(Icons.comment, size: 20, color: Colors.grey),
                SizedBox(width: 4),
                Text("${updatedIdea["comments"]} comments"),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: _commentController,
              decoration: InputDecoration(
                hintText: "Add a comment...",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {
                if (_commentController.text.isNotEmpty) {
                  setState(() {
                    updatedIdea["comments"] += 1;
                    _commentController.clear();
                  });
                  Navigator.pop(context, updatedIdea);
                }
              },
              icon: Icon(Icons.send),
              label: Text("Post Comment"),
            ),
          ],
        ),
      ),
    );
  }
}
