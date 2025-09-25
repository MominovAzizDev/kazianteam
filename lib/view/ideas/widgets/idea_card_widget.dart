import 'package:flutter/material.dart';
import 'package:kaizenteam/view/ideas/idea_detail_page.dart';

class IdeaCardWidget extends StatelessWidget {
  final Map<String, dynamic> idea;
  final void Function(Map<String, dynamic>) onUpdate;

  const IdeaCardWidget({super.key, required this.idea, required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
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
                    idea["title"],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: idea["statusColor"],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(idea["status"], style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
            SizedBox(height: 6),
            Text(
              idea["description"],
              style: TextStyle(color: Colors.black87, fontSize: 13),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(Icons.person, size: 14, color: Colors.white),
                ),
                SizedBox(width: 6),
                Text(idea["author"], style: TextStyle(fontSize: 12)),
                SizedBox(width: 6),
                Text("•", style: TextStyle(color: Colors.grey)),
                SizedBox(width: 6),
                Icon(Icons.access_time, size: 14, color: Colors.black54),
                SizedBox(width: 4),
                Text(idea["date"], style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Icon(
                  Icons.thumb_up_alt_outlined,
                  size: 16,
                  color: Colors.green,
                ),
                SizedBox(width: 4),
                Text("${idea["likes"]}", style: TextStyle(fontSize: 12)),
                SizedBox(width: 12),
                Icon(
                  Icons.thumb_down_alt_outlined,
                  size: 16,
                  color: Colors.red,
                ),
                SizedBox(width: 4),
                Text("${idea["dislikes"]}", style: TextStyle(fontSize: 12)),
                SizedBox(width: 12),
                Icon(
                  Icons.chat_bubble_outline,
                  size: 16,
                  color: Colors.black54,
                ),
                SizedBox(width: 4),
                Text("${idea["comments"]}", style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(height: 12),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () async {
                final updatedIdea = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IdeaDetailPage(idea: idea),
                  ),
                );
                if (updatedIdea != null) {
                  onUpdate(updatedIdea);
                }
              },
              child: Text("View Details"),
            ),
          ],
        ),
      ),
    );
  }
}
